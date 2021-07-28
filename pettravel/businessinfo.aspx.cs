using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.IO;
using Newtonsoft.Json.Linq;

namespace pettravel
{
    public partial class businessinfo : System.Web.UI.Page
    {   //
        bool newstore = false;
        string mid;
        string sid ="";
        //*** Method
        SqlConnection SqlPTC = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString);
        /*RECaptcha
        {
            public  Key = "6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI";
            public  Secret = "6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe";
            html=6Lf1lqsbAAAAAEe2ptOrw7EriKV8KiotTzpAgb-T
            backend=6Lf1lqsbAAAAANIor_HPY3GjOvoF5ZHEYTNlRWzP
        }*/

        public void PageMsg(string msgcode)
        {  //統一設定錯誤訊息
            Response.Write("<script>alert('status :\\n" + msgcode + "');</script>");
        }
        public void PageMsg(string msgcode, string href)
        {  //統一設定錯誤訊息
            Response.Write("<script>alert('status :\\n" + msgcode + "');location.href='"+href+"';</script>");
        }
        public void ImageUpload(bool Deleteold)
        {
            for (int i = 1; i < 5; i++)
            {
                string PN = "pic" + i;
                string Storage = "/pic/StoreInfo/" + sid;
                string Storagepath = Storage + "/";
                // pic/StoreInfo/位置 新建一個SID資料夾 /若是修改資料 則先抹除sid資料夾新建一個
                if (i == 1)
                {
                    try
                    {
                        if (!Deleteold)
                            Directory.Delete(Server.MapPath(Storage), true);
                        Directory.CreateDirectory(Server.MapPath(Storage));
                    }
                    catch { }
                    
                }
                HttpPostedFile StoreImg = Request.Files[PN];
                string FileExtension = Path.GetExtension(Request.Files[PN].FileName);

                if (FileExtension == "") { PageMsg("請上傳照片", "businessinfo");}
                StoreImg.SaveAs(Server.MapPath(Path.Combine(Storagepath, PN + FileExtension)));
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

        //*** Method end
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["email"] = "Eliastest@gmail.com";
            if (Session["email"] == null)
                PageMsg("請先登入", "login");
            try
            {
                 SqlCommand midsidcommand = new SqlCommand(@"select * from Member where memail=@email", SqlPTC);
                 midsidcommand.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["email"];
                 SqlPTC.Open();
                 SqlDataReader SqlData1 = midsidcommand.ExecuteReader();

                if (SqlData1.HasRows)//資料列是否有值
                {
                    if (SqlData1.Read())//讀取值
                    {
                        mid = SqlData1["mid"].ToString();
                        sid = SqlData1["mStoreSid"].ToString();
                    }
                }
                SqlPTC.Close();
                if (sid != "")
                {
                    SqlCommand Mangercommand = new SqlCommand(@"select * from Storeinfo where sid=@sid", SqlPTC);
                    Mangercommand.Parameters.Add("@sid", SqlDbType.Int).Value = sid;
                    SqlPTC.Open();
                    SqlDataReader SqlData2 = Mangercommand.ExecuteReader();
                    if (SqlData2.HasRows && SqlData2.Read() && SqlData2["Mid"].ToString() == mid)//資料列是否有值
                    {
                        if (!IsPostBack)
                        {
                            Spot.SelectedValue = SqlData2["stype"].ToString();
                        }
                        StoreTB.Text = SqlData2["sname"].ToString();
                        PhoneTB.Text = SqlData2["sphone"].ToString();
                        oldAddressTB.Text = SqlData2["sregion"].ToString() + " " + SqlData2["saddress"].ToString();
                        WebsiteTB.Text = SqlData2["swebsite"].ToString();
                        sMassage.Text = SqlData2["smessage"].ToString();

                        /*//old img path info 
                        string[] Filename = new string[5];
                        int j = 1;
                        foreach (string fname in Directory.GetFileSystemEntries(Server.MapPath("/pic/StoreInfo/" + sid)))
                        {
                            string path = fname.Replace(Server.MapPath(""), "~");
                            Filename[j] = path;
                            j++;
                        }

                        sidpath.Value = sid;
                        picpath1.Value = Filename[1];
                        picpath2.Value = Filename[2];
                        picpath3.Value = Filename[3];
                        picpath4.Value = Filename[4];*/
                    }
                    SqlPTC.Close();
                }
                else
                {
                    UpdateBT.Text = "確認新增";
                    newstore = true;
                }
            }
            catch
            {
                Response.StatusCode = 404;
                PageMsg("系統連線失敗\\n請稍後在試\\n", "index");
            }
        }

        protected void UpdateBT_Click(object sender, EventArgs e)
        {
            if (ValidatePass())
                if (newstore == false && Request.Form["oldAddressTB"] != "")
                {
                    SqlCommand UpdateData = new SqlCommand(@"UPDATE Storeinfo SET sname = @StoreTB, sregion = @RegionTB, 
                saddress = @AddressTB, stype= @Stype,sphone = @PhoneTB, swebsite = @WebsiteTB, smessage = @sMassage WHERE sid =@sid", SqlPTC);
                    UpdateData.Parameters.Add("@Stype", SqlDbType.NVarChar).Value = Spot.SelectedValue;
                    UpdateData.Parameters.Add("@StoreTB", SqlDbType.NVarChar).Value = Request.Form["StoreTB"];
                    UpdateData.Parameters.Add("@PhoneTB", SqlDbType.VarChar).Value = Request.Form["PhoneTB"];
                    UpdateData.Parameters.Add("@RegionTB", SqlDbType.NVarChar).Value = Request.Form["county"].ToString() + " " + Request.Form["district"].ToString();
                    UpdateData.Parameters.Add("@AddressTB", SqlDbType.NVarChar).Value = Request.Form["AddressTB"];
                    
                    if (Request.Form["WebsiteTB"].IndexOf("www") - 1 == -1)
                        UpdateData.Parameters.Add("@WebsiteTB", SqlDbType.NVarChar).Value = "https://" + Request.Form["WebsiteTB"];
                    else
                        UpdateData.Parameters.Add("@WebsiteTB", SqlDbType.NVarChar).Value = "https://" + Request.Form["WebsiteTB"].Substring(Request.Form["WebsiteTB"].IndexOf("www") - 1);

                    UpdateData.Parameters.Add("@sMassage", SqlDbType.NVarChar).Value = Request.Form["sMassage"];
                    UpdateData.Parameters.Add("@sid", SqlDbType.Int).Value = sid;

                    try
                    {
                        SqlPTC.Open();
                        UpdateData.ExecuteNonQuery();
                        SqlPTC.Close();
                        ImageUpload(newstore);
                        PageMsg("修改成功", "businessinfo");
                    }
                    catch
                    {
                        Response.StatusCode = 404;
                        PageMsg("系統連線失敗\\n請稍後在試\\n", "index");
                    }
                }
                else
                {
                    
                    SqlCommand Store = new SqlCommand(@"insert into 
                Storeinfo(Mid,sname,stype,sregion,saddress,sphone,swebsite,smessage) 
                values(@mid,@StoreTB,@Stype,@RegionTB,@AddressTB,@PhoneTB,@WebsiteTB,@sMassage); Select SCOPE_IDENTITY() ", SqlPTC);

                    Store.Parameters.Add("@mid", SqlDbType.VarChar).Value = mid;
                    Store.Parameters.Add("@Stype", SqlDbType.NVarChar).Value = Spot.SelectedValue;
                    Store.Parameters.Add("@StoreTB", SqlDbType.NVarChar).Value = Request.Form["StoreTB"];
                    Store.Parameters.Add("@PhoneTB", SqlDbType.VarChar).Value = Request.Form["PhoneTB"];
                    Store.Parameters.Add("@RegionTB", SqlDbType.NVarChar).Value = Request.Form["county"].ToString() + " " + Request.Form["district"].ToString();
                    Store.Parameters.Add("@AddressTB", SqlDbType.NVarChar).Value = Request.Form["AddressTB"];
                    
                    if (Request.Form["WebsiteTB"].IndexOf("www") - 1 == -1)
                        Store.Parameters.Add("@WebsiteTB", SqlDbType.NVarChar).Value = "https://" + Request.Form["WebsiteTB"];
                    else
                        Store.Parameters.Add("@WebsiteTB", SqlDbType.NVarChar).Value = "https://" + Request.Form["WebsiteTB"].Substring(Request.Form["WebsiteTB"].IndexOf("www") - 1);
                    
                    Store.Parameters.Add("@sMassage", SqlDbType.NVarChar).Value = Request.Form["sMassage"];

                    try
                    {
                        SqlPTC.Open();
                        sid = Store.ExecuteScalar().ToString();
                        SqlCommand mStoresid = new SqlCommand(@"UPDATE  Member SET mStoreSid=" + sid + " where mid=" + mid, SqlPTC);
                        mStoresid.ExecuteNonQuery();
                        SqlPTC.Close();
                        ImageUpload(newstore);
                        PageMsg("新增店家成功", "businessinfo");
                    }
                    catch
                    {
                        Response.StatusCode = 404;
                        PageMsg("系統連線失敗\\n請稍後在試\\n", "index");
                    }
                }
            else {
                PageMsg("驗證未通過", "businessinfo");
            }
        }
    }
}