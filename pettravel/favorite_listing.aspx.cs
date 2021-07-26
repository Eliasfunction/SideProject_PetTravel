using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Drawing.Imaging;
using System.Data;

namespace pettravel
{

    public partial class favorite_listing : System.Web.UI.Page
    {
        int page = 1, storect, maxpage;
        string sid1, sid2, sid3, sid4, sid5, sid6;
        List<string> sfeature1 = new List<string>();
        List<string> sfeature2 = new List<string>();
        List<string> sname = new List<string>();
        List<string> smessage = new List<string>();
        List<string> stype = new List<string>();
        List<string> sid = new List<string>();
        List<string> spic1 = new List<string>();
        List<string> spic2 = new List<string>();
        List<string> spic3 = new List<string>();
        

        //***function
        public SqlConnection SqlPTC()
        {  //統一更改連線資料
            SqlConnection Sql = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString);
            return Sql;
        }


        public void PageMsg(string msgcode)
        {  //統一設定錯誤訊息
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('  status : \\n  " + msgcode + "');", true);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["page"] == null)
            {
                Session["page"] = "2";
            }
            //檢查狀態值
            if (Session["login"] != null && Session["login"].ToString() == "yes")
            {

                Log.Text = "登出";
                Label1.Text = Session["name"] + " 先生/小姐您好，想帶您的主子去哪玩嗎？";
            }
            else
            {
                Log.Text = "登入";
                Label1.Text = "撿屎官好，想帶您的主子去哪玩嗎？";
                PersonalDataLB.Visible = false;
                BusinessInfoLB.Visible = false;
            }
            if (Request.QueryString["page"] == null)
            {
                Response.Redirect("favorite_listing.aspx?page=1");
            }
            if ((int.Parse(Request.QueryString["page"]) > int.Parse(Session["page"].ToString())) || (int.Parse(Request.QueryString["page"]) <= 0))
            {
                PageMsg("該頁無資料!!將導回第一頁");
                Response.Redirect("favorite_listing.aspx?page=1");
                maxpage = int.Parse(Session["page"].ToString());
            }
            //更新頁碼
            page = int.Parse(Request.QueryString["page"]);

            if (page == 1)
            {
                LkBtnpage1.Text = "1";
                LkBtnpage2.Text = "2";
                LkBtnpage3.Text = "3";
            }
            else
            {
                LkBtnpage1.Text = (page - 1).ToString();
                LkBtnpage2.Text = page.ToString();
                LkBtnpage3.Text = (page + 1).ToString();
            }

            //參考 login.aspx.cs #36
            try
            {

                SqlConnection SqlPTC = this.SqlPTC();
                SqlPTC.Open();

                string SqlMemberSearchcode = @"SELECT * FROM Member WHERE memail=@email";
                SqlCommand SearchMcommand = new SqlCommand(SqlMemberSearchcode, SqlPTC);
                if (Session["email"] != null)
                {
                    SearchMcommand.Parameters.Add("@email", SqlDbType.VarChar).Value = Session["email"].ToString();
                }
                
                SqlDataReader SqlMData = SearchMcommand.ExecuteReader();
                if (SqlMData.HasRows)//資料列是否有值
                {
                    if (SqlMData.Read())//讀取值
                    {
                        string favoritesIdString = SqlMData["fsid"].ToString();
                        string[] favoritesArray = favoritesIdString.Split(',');
                        int[] favoritesIntArray = new int[favoritesArray.Length];
                        for(int i = 0; i < favoritesArray.Length; i++)
                        {
                            favoritesIntArray[i] = Int32.Parse(favoritesArray[i]);
                        }
                        SqlPTC.Close();
                        

                        SqlPTC.Open();
                        
                        for (int i = 0; i < favoritesIntArray.Length; i++)
                        {
                            string SqlStoreinfoSearchcode = @"SELECT * FROM StoreInfo WHERE sid=@id";
                            SqlCommand SearchScommand = new SqlCommand(SqlStoreinfoSearchcode, SqlPTC);
                            SearchScommand.Parameters.Add("@id", SqlDbType.Int).Value = favoritesIntArray[i];
                            SqlDataReader SqlSData = SearchScommand.ExecuteReader();
                            if (SqlSData.HasRows)
                            {
                                if (SqlSData.Read())
                                {
                                    //讀取資料庫資料 新增至同名list中
                                    sfeature1.Add(SqlSData["sfeature1"].ToString());
                                    sfeature2.Add(SqlSData["sfeature2"].ToString());
                                    smessage.Add(SqlSData["smessage"].ToString());
                                    sname.Add(SqlSData["sname"].ToString());
                                    stype.Add(SqlSData["stype"].ToString());
                                    sid.Add(SqlSData["sid"].ToString());
                                    spic1.Add(SqlSData["spic1"].ToString());
                                    spic2.Add(SqlSData["spic2"].ToString());
                                    spic3.Add(SqlSData["spic3"].ToString());
                                    
                                }
                            }
                            else
                            {
                                
                                // Label Text = "連線失敗";
                                // Label Text = "連線失敗\r\n Status:Sql Connection failure";
                            }
                            SqlSData.Close();
                        }
                        
                        
                        //while (SqlSData.NextResult()) ;
                        //更新顯示的店家資料
                        storect = favoritesArray.Length;
                        maxpage = ((storect / 6) + 1);
                        Session["page"] = maxpage;
                        int exhibit_id1 = page * 6 - 6;
                        int exhibit_id2 = page * 6 - 5;
                        int exhibit_id3 = page * 6 - 4;
                        int exhibit_id4 = page * 6 - 3;
                        int exhibit_id5 = page * 6 - 2;
                        int exhibit_id6 = page * 6 - 1;

                        if (sid.Any())
                        {
                            LblRightContent.Text = "目前收藏了" + storect + "個景點";
                        }
                        else
                        {
                            LblRightContent.Text = "目前尚無收藏";
                        }

                        Lbl1sfeature1.Text = sfeature1[exhibit_id1];
                        Lbl1sfeature2.Text = sfeature2[exhibit_id1];
                        Lbl1smessage.Text = smessage[exhibit_id1];
                        LkBtn1sname.Text = sname[exhibit_id1];
                        Lbl1stype.Text = stype[exhibit_id1];
                        sid1 = sid[exhibit_id1];
                        Img1spic1.ImageUrl = "pic/StoreInfo/" + sid1 + "/pic1.jpg";
                        Img1spic3.ImageUrl = "assets/img/icon/" + stype[exhibit_id1] + "-icon.png";

                        Lbl2sfeature1.Text = sfeature1[exhibit_id2];
                        Lbl2sfeature2.Text = sfeature2[exhibit_id2];
                        Lbl2smessage.Text = smessage[exhibit_id2];
                        LkBtn2sname.Text = sname[exhibit_id2];
                        Lbl2stype.Text = stype[exhibit_id2];
                        sid2 = sid[exhibit_id2];
                        Img2spic1.ImageUrl = "pic/StoreInfo/" + sid2 + "/pic1.jpg";
                        Img2spic3.ImageUrl = "assets/img/icon/" + stype[exhibit_id2] + "-icon.png";

                        Lbl3sfeature1.Text = sfeature1[exhibit_id3];
                        Lbl3sfeature2.Text = sfeature2[exhibit_id3];
                        Lbl3smessage.Text = smessage[exhibit_id3];
                        LkBtn3sname.Text = sname[exhibit_id3];
                        Lbl3stype.Text = stype[exhibit_id3];
                        sid3 = sid[exhibit_id3];
                        Img3spic1.ImageUrl = "pic/StoreInfo/" + sid3 + "/pic1.jpg";
                        Img3spic3.ImageUrl = "assets/img/icon/" + stype[exhibit_id3] + "-icon.png";

                        Lbl4sfeature1.Text = sfeature1[exhibit_id4];
                        Lbl4sfeature2.Text = sfeature2[exhibit_id4];
                        Lbl4smessage.Text = smessage[exhibit_id4];
                        LkBtn4sname.Text = sname[exhibit_id4];
                        Lbl4stype.Text = stype[exhibit_id4];
                        sid4 = sid[exhibit_id4];
                        Img4spic1.ImageUrl = "pic/StoreInfo/" + sid4 + "/pic1.jpg";
                        Img4spic3.ImageUrl = "assets/img/icon/" + stype[exhibit_id4] + "-icon.png";

                        Lbl5sfeature1.Text = sfeature1[exhibit_id5];
                        Lbl5sfeature2.Text = sfeature2[exhibit_id5];
                        Lbl5smessage.Text = smessage[exhibit_id5];
                        LkBtn5sname.Text = sname[exhibit_id5];
                        Lbl5stype.Text = stype[exhibit_id5];
                        sid5 = sid[exhibit_id5];
                        Img5spic1.ImageUrl = "pic/StoreInfo/" + sid5 + "/pic1.jpg";
                        Img5spic3.ImageUrl = "assets/img/icon/" + stype[exhibit_id5] + "-icon.png";

                        Lbl6sfeature1.Text = sfeature1[exhibit_id6];
                        Lbl6sfeature2.Text = sfeature2[exhibit_id6];
                        Lbl6smessage.Text = smessage[exhibit_id6];
                        LkBtn6sname.Text = sname[exhibit_id6];
                        Lbl6stype.Text = stype[exhibit_id6];
                        sid6 = sid[exhibit_id6];
                        Img6spic1.ImageUrl = "pic/StoreInfo/" + sid6 + "/pic1.jpg";
                        Img6spic3.ImageUrl = "assets/img/icon/" + stype[exhibit_id6] + "-icon.png";
                    }
                }
                SqlPTC.Close();
            }
            catch (Exception ex)
            {
                PageMsg("系統連線失敗 \\n請稍後在試\\n請管理員回報以下錯誤碼:\\n" + ex);
                //Lbl1sfeature1.Text = ex.ToString();
                // Label Text = "連線失敗";
                // Label Text = "連線失敗\r\n Status:Sql Connection failure";
            }
        }

        protected void LkBtn1sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid1 + "&type=" + Lbl1stype.Text;
            Response.Redirect(surl);
        }
        protected void LkBtn2sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid2 + "&type=" + Lbl2stype.Text;
            Response.Redirect(surl);
        }
        protected void LkBtn3sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid3 + "&type=" + Lbl3stype.Text;
            Response.Redirect(surl);
        }

        protected void LkBtn4sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid4 + "&type=" + Lbl4stype.Text;
            Response.Redirect(surl);
        }

        protected void LkBtn5sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid5 + "&type=" + Lbl5stype.Text;
            Response.Redirect(surl);
        }
        protected void LkBtn6sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid6 + "&type=" + Lbl6stype.Text;
            Response.Redirect(surl);
        }

        protected void PersonalDataLB_Click(object sender, EventArgs e)
        {
            Response.Redirect("personaldata");
        }

        protected void BusinessInfoLB_Click(object sender, EventArgs e)
        {
            Response.Redirect("businessinfo");
        }

        protected void Log_Click(object sender, EventArgs e)
        {
            if (Session["login"] != null && Session["login"].ToString() == "yes")
            {
                Log.Text = "登入";
                Label1.Text = "撿屎官好，想帶您的主子去哪玩嗎？";
                Session.Abandon();
                PersonalDataLB.Visible = false;
                BusinessInfoLB.Visible = false;
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('" + "您已成功登出" + "');", true);
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("index");
        }
        protected void LkBtnpage1_Click(object sender, EventArgs e)
        {
            string surl = "favorite_listing.aspx?page=" + LkBtnpage1.Text;
            Response.Redirect(surl);
        }
        protected void LkBtnpage2_Click(object sender, EventArgs e)
        {
            string surl = "favorite_listing.aspx?page=" + LkBtnpage2.Text;
            Response.Redirect(surl);
        }

        protected void LkBtnpage3_Click(object sender, EventArgs e)
        {
            string surl = "favorite_listing.aspx?page=" + LkBtnpage3.Text;
            Response.Redirect(surl);
        }
        protected void LkBtnpagelett_Click(object sender, EventArgs e)
        {
            string surl = "favorite_listing.aspx?page=" + (page - 1).ToString();
            Response.Redirect(surl);
        }

        protected void LkBtnpageright_Click(object sender, EventArgs e)
        {
            if (page == maxpage)
            {
                PageMsg("目前是最後一頁!!");
            }
            else
            {
                string surl = "favorite_listing.aspx?page=" + (page + 1).ToString();
                Response.Redirect(surl);
            }
        }

    }
}
