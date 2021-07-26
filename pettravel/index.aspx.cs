using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pettravel
{
    public partial class index : Page
    {
        //**** function
        private static string HMACSHA256(string message, string key) // key = Keys
        {
            //Hash256加密段
            var encoding = new System.Text.UTF8Encoding();
            byte[] keyByte = encoding.GetBytes(key);
            byte[] messageBytes = encoding.GetBytes(message);
            using (var hmacSHA256 = new HMACSHA256(keyByte))
            {
                byte[] hashMessage = hmacSHA256.ComputeHash(messageBytes);
                return BitConverter.ToString(hashMessage).Replace("-", "").ToLower();
            }
        }
        public SqlConnection SqlPTC()
        {  //統一更改連線資料
            SqlConnection Sql = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString);

            return Sql;
        }
        //**** function end
        protected void Page_Load(object sender, EventArgs e)
        {

            //檢查 登入狀態碼 是否有值
            if (Session["login"] != null && Session["login"].ToString() == "yes")
            {
                //已登入顯示
                Log.Text = "登出";
                Label1.Text = Session["name"] + " 先生/小姐您好!!</br>想帶您的主子去哪玩嗎？";
            }
            else
            {
                //未登入顯示
                Log.Text = "登入";
                Label1.Text = "撿屎官好!!</br>想帶您的主子去哪玩嗎？";
                PersonalDataLB.Visible = false;
                BusinessInfoLB.Visible = false;
            }
        }
        

        protected void Log_Click(object sender, EventArgs e)
        {

            if (Session["login"] != null && Session["login"].ToString() == "yes")
            {
                //已登入狀態 註銷登入(登出)
                Log.Text = "登入";
                Label1.Text = "撿屎官好!!</br>想帶您的主子去哪玩嗎？";

                Session.Abandon();
                PersonalDataLB.Visible = false;
                BusinessInfoLB.Visible = false;
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('您已成功登出');", true);
            }
            else
            {
                //未登入狀態 跳轉登入頁
                Response.Redirect("login.aspx");
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //logo url
            Response.Redirect("index");
        }


        protected void UpdatePersonalData_Click(object sender, EventArgs e)
        {
            //更新個人資料

            string newpwd = HMACSHA256(Request.Form["NewPwd"], "Keys");
            string oldpwd = HMACSHA256(Request.Form["OldPwd"], "Keys");
            //獲取資料庫連線資訊
            //參考 login.aspx.cs #36
            try
            {
                SqlConnection SqlPTC = this.SqlPTC();
                SqlPTC.Open();
                string SqlMemberSearchcode = @"UPDATE Member SET mname = @name, mpassword = @password, mphone = @phone, maddress = @address WHERE memail = @email";

                SqlCommand UpdateCommand = new SqlCommand(SqlMemberSearchcode, SqlPTC);

                UpdateCommand.Parameters.Add("@name", System.Data.SqlDbType.NVarChar).Value = Request.Form["NameTB"].ToString();
                UpdateCommand.Parameters.Add("@password", System.Data.SqlDbType.NVarChar).Value = Request.Form["NewPwd"];
                UpdateCommand.Parameters.Add("@phone", System.Data.SqlDbType.NVarChar).Value = Request.Form["PhoneTB"];
                UpdateCommand.Parameters.Add("@address", System.Data.SqlDbType.NVarChar).Value = Request.Form["AddressTB"];
                UpdateCommand.Parameters.Add("@email", System.Data.SqlDbType.VarChar).Value = Session["email"].ToString();
                UpdateCommand.ExecuteNonQuery();
                SqlPTC.Close();
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('系統連線失敗 \\n請稍後在試');", true);

            }

        }

        protected void SubmitListing_Click(object sender, EventArgs e)
        {
            //更新業者資料
            try
            {
                SqlConnection SqlPTC = this.SqlPTC();
                SqlPTC.Open();

                string update = @"UPDATE Member SET mname = @name, mpassword = @password, mphone = @phone, maddress = @address WHERE memail = @email";

                SqlPTC.Close();
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('系統連線失敗 \\n請稍後在試');", true);

            }
        }

        protected void GetYourTrip_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void PersonalDataLB_Click(object sender, EventArgs e)
        {
            Response.Redirect("personaldata");
        }

        protected void BusinessInfoLB_Click(object sender, EventArgs e)
        {
            Response.Redirect("businessinfo");
        }

        /*
        protected void PlanTrip_Click(object sender, EventArgs e)
        {
            //規劃行程Button
            try
            {
                SqlConnection SqlPTC = this.SqlPTC();
                SqlPTC.Open();

                string plantrip = @"";
                SqlCommand PlanTripCommand = new SqlCommand(plantrip, SqlPTC);

                SqlPTC.Close();
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('系統連線失敗 \\n請稍後在試');", true);

            }

        }
        */
    }
}