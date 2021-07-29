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
        string oldpwhash = ""; //load oid user pw hash in server
        public void PageMsg(string msgcode)
        {
            Response.Write("<script>alert('status :\\n" + msgcode + "');</script>");
        }
        public void PageMsg(string msgcode, string href)
        {
            Response.Write("<script>alert('status :\\n" + msgcode + "');location.href='" + href + "';</script>");
        }
        private static string HMACSHA256(string message, string key) // key = Keys
        {//Hash256加密段
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
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["email"] = "Eliastest2@gmail.com";//本機測試用帳號
            if (Session["email"] == null)
            {
                PageMsg("請先登入", "login");
            }
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
                    oldpwhash = SqlData["mpassword"].ToString();
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

        protected void UpdateBT_Click(object sender, EventArgs e)
        {
            if (!ValidatePass())
                PageMsg("驗證未通過", "personaldata");

            if (Request.Form["NewPwdTB"].ToString() != Request.Form["ConfirmPwdTB"].ToString())
                ShowError.Text = "新密碼確認不正確";
            else if (Request.Form["OldPwdTB"].ToString() == Request.Form["NewPwdTB"].ToString())
                ShowError.Text = "請確認新舊密碼是否正確 且不得為相同";
            else
            {
                string OldUserRegPwd = HMACSHA256(Request.Form["OldPwdTB"], "Keys");
                string NewUserRegPwd = HMACSHA256(Request.Form["NewPwdTB"], "Keys");
                if (oldpwhash != OldUserRegPwd)
                    ShowError.Text = "原密碼輸入錯誤";
                else
                {
                    string UpdateDataSQLCommand = @"UPDATE Member SET mname = @name, mpassword = @password, mphone = @phone, maddress = @address WHERE memail = @email";
                    SqlCommand UpdateData = new SqlCommand(UpdateDataSQLCommand, SqlPTC);

                    UpdateData.Parameters.Add("@name", SqlDbType.NVarChar).Value = Request.Form["NameTB"];
                    UpdateData.Parameters.Add("@phone", SqlDbType.VarChar).Value = Request.Form["PhoneTB"];
                    UpdateData.Parameters.Add("@address", SqlDbType.NVarChar).Value = Request.Form["AddressTB"];
                    UpdateData.Parameters.Add("@email", SqlDbType.VarChar).Value = Session["email"];
                    UpdateData.Parameters.Add("@password", SqlDbType.NVarChar).Value = NewUserRegPwd;
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
            }
        }
    }
}