﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Cryptography;
using System.Net;
using System.IO;
using Newtonsoft.Json.Linq;
using System.Net.Mail;

namespace pettravel
{
    public partial class register : Page
    {
        SqlConnection SqlPTC = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString);
        bool AccountPass =false;//帳戶名稱可用性
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["login"] != null && Session["login"].ToString() == "yes")
                PageMsg("您無須再登入", "index");

            string NewUserEmailCheck = @"select * from Member where memail=@email";
            SqlCommand cmd = new SqlCommand(NewUserEmailCheck, SqlPTC);
            cmd.Parameters.Add("@email", SqlDbType.VarChar);
            cmd.Parameters["@email"].Value = (object)Request.Form["email"] ?? DBNull.Value;
            SqlPTC.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows && rd.Read())
            {
                AccountPass = false;
                Label1.Text = "此帳號已被使用，請重新輸入";
            }
            else
            {
                AccountPass = true;
                Label1.Text = "此帳號可使用";
            }
            SqlPTC.Close();

        }

        protected void reg_Click(object sender, EventArgs e)
        {
            if (!ValidatePass())
                PageMsg("驗證未通過", "register");

            if (AccountPass == true)
                PageMsg("帳戶名稱不可用", "register"); 

            //存入新使用者註冊資料
            string sql2 = @"insert into Member(mname,memail,mpassword) values(@name,@email,@passwd)";
            SqlCommand command2 = new SqlCommand(sql2, SqlPTC);
            command2.Parameters.Add("@name", SqlDbType.NVarChar).Value = Request.Form["name"];
            command2.Parameters.Add("@email", SqlDbType.VarChar).Value = Request.Form["email"];
            command2.Parameters.Add("@passwd", SqlDbType.NVarChar).Value = HMACSHA256(Request.Form["passwd"], "Keys");
            SqlPTC.Open();
            command2.ExecuteNonQuery();
            SqlPTC.Close();

            //信箱驗證
            string sql = @"select * from Member where memail=@email";
            SqlCommand command = new SqlCommand(sql, SqlPTC);
            command.Parameters.Add("@email", SqlDbType.VarChar).Value = Request.Form["email"];

            SqlPTC.Open();
            SqlDataReader rd = command.ExecuteReader();
            if (rd.HasRows && rd.Read())
            {
                string html = "https://localhost:44307//login?newid=" + rd["mnewid"];//本機測試用
                //string html = "https://pettravel20210625105216.azurewebsites.net/login?newid=" + rd["mnewid"];//雲端用
                string body = "<h2 style='color:Pink;'>  歡迎您註冊毛起來玩~!!!</h2><br><p style='color:aqua;'>請點擊<a href='" + html + "'>這裡</a>進行您的帳號驗證，我們將為您導回登入頁就可以進行登入，謝謝您使用毛起來玩，愛你哦~~~</p>";
                SendMailByGmail(Request.Form["email"], "驗證信箱", body);
                PageMsg("請去信箱進行驗證，再進行登入", "index");
            }
            SqlPTC.Close();
        }

        private void SendMailByGmail(string email, string subject, string body)
        {
            MailMessage mail = new MailMessage();
            //收件者，以逗號分隔不同收件者 ex "test@gmail.com,test2@gmail.com"
            mail.To.Add(email);
            mail.From = new MailAddress("watertest500@gmail.com", "我是驗證的信箱", System.Text.Encoding.UTF8);
            //郵件標題 
            mail.Subject = subject;
            //郵件標題編碼  
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            //郵件內容
            mail.Body = body;
            mail.IsBodyHtml = true;
            mail.BodyEncoding = System.Text.Encoding.UTF8;//郵件內容編碼 
            mail.Priority = MailPriority.Normal;//郵件優先級 
            //建立 SmtpClient 物件 並設定 Gmail的smtp主機及Port 
            //region 其它 Host
            /*
             *  outlook.com smtp.live.com port:25
             *  yahoo smtp.mail.yahoo.com.tw port:465
            */
            //endregion
            SmtpClient MySmtp = new SmtpClient("smtp.gmail.com", 25);
            //設定你的帳號密碼
            MySmtp.Credentials = new System.Net.NetworkCredential("watertest500", "uutzoydopqpcbdbn");
            //Gmial 的 smtp 使用 SSL
            MySmtp.EnableSsl = true;
            MySmtp.Send(mail);
            //放掉宣告出來的MySmtp
            MySmtp = null;
            //放掉宣告出來的mail
            mail.Dispose();
        }
        //***function start        
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

        public void PageMsg(string msgcode)
        {  //統一設定錯誤訊息
            Response.Write("<script>alert('status :\\n" + msgcode + "');</script>");
        }
        public void PageMsg(string msgcode, string href)
        {  //統一設定錯誤訊息
            Response.Write("<script>alert('status :\\n" + msgcode + "');location.href='" + href + "';</script>");
        }
        public bool ValidatePass()
        {
            string Response = Request["g-recaptcha-response"];//Getting Response String Append to Post Method
            bool Valid = false;
            //Request to Google Server
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create
            (" https://www.google.com/recaptcha/api/siteverify?secret=6Lf1lqsbAAAAANIor_HPY3GjOvoF5ZHEYTNlRWzP&response=" + Response);
            try
            {
                //Google recaptcha Response
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