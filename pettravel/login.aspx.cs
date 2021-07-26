using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security;
using System.Security.Cryptography;
using System.Net;
using System.IO;
using Newtonsoft.Json.Linq;

namespace pettravel
{
    public partial class login : Page
    {
        //統一更改連線資料
        SqlConnection SqlPTC = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString);


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


        //***function end

        protected void Page_Load(object sender, EventArgs e)
        {
            //檢查連線與登入狀態
            //第一次訪問  或 登入狀態為 null or yes(已登入) 時 跳轉首頁
            if(!IsPostBack && Session["login"] != null && Session["login"].ToString() == "yes")
            {
                Response.Redirect("index");
            }

            //信箱驗證後改資料庫
            if (Request.QueryString["newid"] != null && Request.QueryString["newid"] == newId())
            {                
                SqlPTC.Open();
                string sql = @"update Member set mverify='y' where mnewid=@newid";
                SqlCommand cmd = new SqlCommand(sql, SqlPTC);
                cmd.Parameters.Add("@newid", SqlDbType.NVarChar).Value = Request.QueryString["newid"];
                cmd.ExecuteNonQuery();
                SqlPTC.Close();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (ValidatePass())
            {
                //當帳密皆不為空值 開始驗證 否則提示帳密未輸入
                if (Request.Form["email"] != "" && Request.Form["passwd"] != "")
                {
                    //嘗試連線資料庫進行驗證
                    try
                    {
                        //獲取資料庫連線資訊
                        //帳密查詢指令
                        SqlCommand Searchcommand = new SqlCommand(@"select * from Member where memail=@email", SqlPTC);
                        //下令資料庫返回 與 使用者"email"欄位 相符的資料列
                        Searchcommand.Parameters.Add("@email", SqlDbType.VarChar).Value = Request.Form["email"];
                        SqlPTC.Open();
                        SqlDataReader SqlData = Searchcommand.ExecuteReader();

                        if (SqlData.HasRows)//資料列是否有值
                        {
                            if (SqlData.Read())//讀取值
                            {
                                //讀取使用者輸入的"密碼"並加密 (用於對照註冊時的加密密碼)
                                string passwdHash256 = HMACSHA256(Request.Form["passwd"], "Keys");
                                if (SqlData["mpassword"].ToString() == passwdHash256)
                                {
                                    //確認是否有驗證信箱
                                    if (SqlData["mverify"].ToString() == "y")
                                    {
                                        //成功登入 
                                        Session["login"] = "yes";
                                        Session["name"] = SqlData["mname"];
                                        Session["email"] = SqlData["memail"];
                                        PageMsg("登入成功", "index");
                                    }
                                    else
                                    {
                                        PageMsg("帳號尚未進行驗證，請先到信箱點擊驗證連結再進行登入唷!!!");                               
                                    }
                                }
                                else
                                {
                                    PageMsg("密碼錯誤！");
                                }
                            }
                        }
                        else//無資料列 無值 無帳號
                            PageMsg("查無此帳號");
                        SqlData.Close();
                        SqlPTC.Close();
                    }
                    catch //資料庫登入失敗
                    {
                        Response.StatusCode = 404;
                        PageMsg("系統連線失敗\\n請稍後在試\\n","index");
                    }                   
                }
                else
                    PageMsg("帳號或密碼不能為空！");
            }
            else
            {
                PageMsg("驗證未通過", "login");
            }
        }

        protected string newId()
        {
            SqlPTC.Open();
            string sql = @"select * from Member where mnewid=@newid";
            SqlCommand cmd = new SqlCommand(sql, SqlPTC);
            cmd.Parameters.Add("@newid", SqlDbType.NVarChar).Value = Request.QueryString["newid"];
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                if (rd.Read())
                {
                    string res = rd["mnewid"].ToString();
                    SqlPTC.Close();
                    return res;
                }
            }
            
            return "";
        }
    }
}