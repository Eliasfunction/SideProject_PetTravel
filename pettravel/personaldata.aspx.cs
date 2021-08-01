using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Net;
using System.IO;
using Newtonsoft.Json.Linq;

namespace pettravel
{
    public partial class personaldata : System.Web.UI.Page
    {
        //*** Method
        SqlConnection SqlPTC = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                    PageMsg("請先登入", "login");

                SqlCommand AutoUserinfo = new SqlCommand(@"SELECT * from Member where memail=@email", SqlPTC);
                AutoUserinfo.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["email"].ToString();
                try
                {
                    SqlPTC.Open();
                    SqlDataReader SqlData = AutoUserinfo.ExecuteReader();
                    if (SqlData.HasRows && SqlData.Read())//資料列是否有值
                    {
                        mailTB.Text = Session["email"].ToString();
                        NameTB.Text = SqlData["mname"].ToString();
                        PhoneTB.Text = SqlData["mphone"].ToString(); ;
                        AddressTB.Text = SqlData["maddress"].ToString(); ;
                    }
                    SqlData.Close();
                    SqlPTC.Close();
                }
                catch
                {
                    Response.StatusCode = 404;
                    PageMsg("系統連線失敗\\n請稍後在試\\n");
                }
            }


        }

        protected void UpdateBT_Click(object sender, EventArgs e)
        {
            if (!ValidatePass())//recaptcha is success-pass
                PageMsg("驗證未通過", "personaldata");

            //find old pswd hash-value
            string oldpswdhash = "";
            SqlCommand AutoUserinfo = new SqlCommand(@"SELECT * from Member where memail=@email", SqlPTC);
            AutoUserinfo.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["email"].ToString();
            SqlPTC.Open();
            SqlDataReader SqlData = AutoUserinfo.ExecuteReader();
            if (SqlData.HasRows && SqlData.Read())
                oldpswdhash = SqlData["mpassword"].ToString();
            SqlData.Close();
            SqlPTC.Close();
            //check old pswd hash-value are same with user input
            if (!(oldpswdhash == HMACSHA256(Request.Form["OldPwdTB"], "Keys")))
            {
                ShowError.Text = "原密碼輸入錯誤";
                return;
            }

            SqlCommand UpdateData= new SqlCommand();
            //
            if (Pswd_area_show.Checked == true)
            {
                if (Request.Form["OldPwdTB"].ToString() == Request.Form["NewPwdTB"].ToString())
                { //new pswd & old pswd are same
                    ShowError.Text = "請確認新舊密碼是否正確 且不得為相同"; return;
                }
                if (Request.Form["NewPwdTB"].ToString() != Request.Form["ConfirmPwdTB"].ToString())
                {//new pswd & pswd check different
                    ShowError.Text = "新密碼確認不正確";return;
                }

                string Update = @"UPDATE Member SET mname = @name, mpassword = @password, mphone = @phone, maddress = @address 
                                WHERE memail = @email";
                UpdateData = new SqlCommand(Update, SqlPTC);
                UpdateData.Parameters.Add("@name", SqlDbType.NVarChar).Value = Request.Form["NameTB"];
                UpdateData.Parameters.Add("@phone", SqlDbType.VarChar).Value = Request.Form["PhoneTB"];
                UpdateData.Parameters.Add("@address", SqlDbType.NVarChar).Value = Request.Form["AddressTB"];
                UpdateData.Parameters.Add("@email", SqlDbType.VarChar).Value = Session["email"];
                UpdateData.Parameters.Add("@password", SqlDbType.NVarChar).Value = HMACSHA256(Request.Form["NewPwdTB"], "Keys");
            }
            if (Pswd_area_show.Checked == false)
            {
                string UpdateNochangepswd = @"UPDATE Member SET mname = @name, mphone = @phone, maddress = @address 
                                            WHERE memail = @email";
                UpdateData = new SqlCommand(UpdateNochangepswd, SqlPTC);
                UpdateData.Parameters.Add("@name", SqlDbType.NVarChar).Value = Request.Form["NameTB"];
                UpdateData.Parameters.Add("@phone", SqlDbType.VarChar).Value = Request.Form["PhoneTB"];
                UpdateData.Parameters.Add("@address", SqlDbType.NVarChar).Value = Request.Form["AddressTB"];
                UpdateData.Parameters.Add("@email", SqlDbType.VarChar).Value = Session["email"];
            }

            try
            {
                SqlPTC.Open();
                UpdateData.ExecuteNonQuery();
                SqlPTC.Close();
                Session["name"] = Request.Form["NameTB"];
                PageMsg("修改成功", "index");
            }
            catch
            {
                Response.StatusCode = 404;
                PageMsg("系統連線失敗\\n請稍後在試\\n");
            }
        }
        protected void Pswd_area_show_CheckedChanged(object sender, EventArgs e)
        {
            if (Pswd_area_show.Checked == true)
            {
                Pswd_change_area.Style["Display"] = "Block"; 
                return;
            }
            //false
            Pswd_change_area.Style["Display"] = "None";
            NewPwdTB.Text = "";
            ConfirmPwdTB.Text = "";
        }

        //Methods
        public void PageMsg(string msgcode)
        {
            Response.Write("<script>alert('status :\\n" + msgcode + "');</script>");
        }
        public void PageMsg(string msgcode, string href)
        {
            Response.Write("<script>alert('status :\\n" + msgcode + "');location.href='" + href + "';</script>");
        }
        private static string HMACSHA256(string message, string key) // key = "Keys"
        {//Hash256
            var encoding = new System.Text.UTF8Encoding();
            byte[] keyByte = encoding.GetBytes(key);
            byte[] messageBytes = encoding.GetBytes(message);
            using (var hmacSHA256 = new HMACSHA256(keyByte))
            {
                byte[] hashMessage = hmacSHA256.ComputeHash(messageBytes);
                return BitConverter.ToString(hashMessage).Replace("-", "").ToLower();
            }
        }
        public bool ValidatePass()
        {
            string Response = Request["g-recaptcha-response"];//Getting Response String Append to Post Method
            bool Valid = false;
            //Request to Google Server
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create
            (" https://www.google.com/recaptcha/api/siteverify?secret=6Lf1lqsbAAAAANIor_HPY3GjOvoF5ZHEYTNlRWzP&response=" + Response);
            try
            {//Google recaptcha Response
                using (WebResponse wResponse = req.GetResponse())
                {
                    using (StreamReader readStream = new StreamReader(wResponse.GetResponseStream()))
                    {
                        string jsonResponse = readStream.ReadToEnd();
                        JObject info = Newtonsoft.Json.JsonConvert.DeserializeObject<JObject>(jsonResponse);
                        Valid = Convert.ToBoolean(info["success"]);
                    }
                }
                return Valid;
            }
            catch (WebException ex)
            {
                throw ex;
            }
        }


    }
}