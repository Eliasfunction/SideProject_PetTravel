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
using System.Drawing;


namespace pettravel
{

    public partial class WebForm1 : System.Web.UI.Page
    {
        int page=1,storect,maxpage;
        string sid1, sid2, sid3, sid4, sid5, sid6, SqlSearchCodeApply="";
        List<string> sfeature1 = new List<string>();
        List<string> sfeature2 = new List<string>();
        List<string> sname = new List<string>();
        List<string> smessage = new List<string>();
        List<string> stype = new List<string>();
        List<string> sid = new List<string>();
        List<string> spic1 = new List<string>();

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

        public void RefreshStore(string SqlStoreinfoSearchcode)
        {   //刷新店家資訊,每次讀取不同頁數及篩選條件時呼叫
            try
            {

                SqlConnection SqlPTC = this.SqlPTC();
                SqlPTC.Open();

                SqlCommand Searchcommand = new SqlCommand(SqlStoreinfoSearchcode, SqlPTC);

                SqlDataReader SqlData = Searchcommand.ExecuteReader();

                if (SqlData.HasRows)
                {

                    do
                    {
                        while (SqlData.Read())
                        {
                            //讀取資料庫資料 新增至同名list中
                            sfeature1.Add(SqlData["sfeature1"].ToString());
                            sfeature2.Add(SqlData["sfeature2"].ToString());
                            smessage.Add(SqlData["smessage"].ToString());
                            sname.Add(SqlData["sname"].ToString());
                            stype.Add(SqlData["stype"].ToString());
                            sid.Add(SqlData["sid"].ToString());
                            spic1.Add(SqlData["spic1"].ToString());
                        }

                    }
                    while (SqlData.NextResult());
                    //更新顯示的店家資料
                    storect = sid.Count;
                    
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
                        LblRightContent.Text = "目前包含" + storect + "個景點";
                    }
                    else
                    {
                        LblRightContent.Text = "查無符合條件的店家資料";
                    }
                    //刷新店家頁面控制元件
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
                else
                {
                    // Label Text = "連線失敗\r\n Status:Sql Connection failure";
                }
                SqlData.Close();
                SqlPTC.Close();
            }
            catch (Exception ex)
            {
                PageMsg("系統連線失敗 \\n請稍後在試\\n請下管理員回報以下錯誤碼:\\n" + ex);
                // Label Text = "連線失敗\r\n Status:Sql Connection failure";
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["page"] == null)
            {
                Session["page"] = "5";
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
                Response.Redirect("listing.aspx?page=1");
            }
            if ((int.Parse(Request.QueryString["page"]) > int.Parse(Session["page"].ToString())) || (int.Parse(Request.QueryString["page"]) <= 0))
            {
                Response.Redirect("listing.aspx?page=1");
                maxpage = int.Parse(Session["page"].ToString());
            }
            //更新頁碼,並將外觀設定初始化
            page = int.Parse(Request.QueryString["page"]);

            LkBtnpage1.BackColor = Color.White;
            LkBtnpage1.ForeColor = Color.Black;
            LkBtnpage2.BackColor = Color.White;
            LkBtnpage2.ForeColor = Color.Black;
            LkBtnpage3.BackColor = Color.White;
            LkBtnpage3.ForeColor = Color.Black;
            LkBtnpage4.Enabled = true;
            LkBtnpage4.Visible = true;
            LkBtnpage5.Enabled = true;
            LkBtnpage5.Visible = true;
            LkBtnpagetotop.Enabled = true;
            LkBtnpagetotop.Visible = true;
            LkBtnpagetoend.Enabled = true;
            LkBtnpagetoend.Visible = true;
            //店家瀏覽區塊初始化
            Img1spic1.ImageUrl = "assets/img/gallery/properties1.png";
            Img2spic1.ImageUrl = "assets/img/gallery/properties1.png";
            Img3spic1.ImageUrl = "assets/img/gallery/properties1.png";
            Img4spic1.ImageUrl = "assets/img/gallery/properties1.png";
            Img5spic1.ImageUrl = "assets/img/gallery/properties1.png";
            Img6spic1.ImageUrl = "assets/img/gallery/properties1.png";

            Lbl1sfeature1.Text = "店家尚未進駐";
            Lbl1sfeature2.Text = "敬請期待";
            Lbl2sfeature1.Text = "店家尚未進駐";
            Lbl2sfeature2.Text = "敬請期待";
            Lbl3sfeature1.Text = "店家尚未進駐";
            Lbl3sfeature2.Text = "敬請期待";
            Lbl4sfeature1.Text = "店家尚未進駐";
            Lbl4sfeature2.Text = "敬請期待";
            Lbl5sfeature1.Text = "店家尚未進駐";
            Lbl5sfeature2.Text = "敬請期待";
            Lbl6sfeature1.Text = "店家尚未進駐";
            Lbl6sfeature2.Text = "敬請期待";

            Lbl1smessage.Text = "暫無店家資料";
            Lbl2smessage.Text = "暫無店家資料";
            Lbl3smessage.Text = "暫無店家資料";
            Lbl4smessage.Text = "暫無店家資料";
            Lbl5smessage.Text = "暫無店家資料";
            Lbl6smessage.Text = "暫無店家資料";


            //頁碼靠前產生外觀變化
            if ((page == 1) || (page == 2))
            {
                LkBtnpage1.Text = "1";
                LkBtnpage2.Text = "2";
                LkBtnpage3.Text = "3";
                LkBtnpage4.Text = "4";
                LkBtnpage5.Text = "5";
                LkBtnpageright.Enabled = true;
                LkBtnpageright.Visible = true;
                if (page == 1)
                {
                    LkBtnpageleft.Enabled = false;
                    LkBtnpageleft.Visible = false;
                    LkBtnpage1.BackColor = Color.FromArgb(255, 55, 123);// #FF377B
                    LkBtnpage1.ForeColor = Color.White;
                    LkBtnpagetotop.Enabled = false;
                    LkBtnpagetotop.Visible = false;
                }
                else
                {
                    LkBtnpageleft.Enabled = true;
                    LkBtnpageleft.Visible = true;
                    LkBtnpage2.BackColor = Color.FromArgb(255, 55, 123);// #FF377B
                    LkBtnpage2.ForeColor = Color.White;
                }
            }
            //頁碼靠後時產生外觀變化
            else
            {
                LkBtnpage1.Text = (page - 2).ToString();
                LkBtnpage2.Text = (page - 1).ToString();
                LkBtnpage3.Text = page.ToString();
                LkBtnpage4.Text = (page + 1).ToString();
                LkBtnpage5.Text = (page + 2).ToString();
                LkBtnpage3.BackColor = Color.FromArgb(255, 55, 123);// #FF377B
                LkBtnpage3.ForeColor = Color.White;
                LkBtnpageleft.Enabled = true;
                LkBtnpageleft.Visible = true;
                if (page == int.Parse((Session["page"]).ToString()))
                {
                    LkBtnpageright.Enabled = false;
                    LkBtnpageright.Visible = false;
                    LkBtnpage4.Enabled = false;
                    LkBtnpage4.Visible = false;
                    LkBtnpage5.Enabled = false;
                    LkBtnpage5.Visible = false;
                    LkBtnpagetoend.Enabled = false;
                    LkBtnpagetoend.Visible = false;
                }
                else if (page + 1 == int.Parse((Session["page"]).ToString()))
                {
                    LkBtnpage5.Enabled = false;
                    LkBtnpage5.Visible = false;
                }
            }

            //參考 login.aspx.cs #36 若第一次進入瀏覽頁 初始化sql查找語法
            if (Session["SqlSearchCodeApply"] == null)
            {
                SqlSearchCodeApply = "Select * From Storeinfo";
            }
            else
            {
                SqlSearchCodeApply =  Session["SqlSearchCodeApply"].ToString();
            }
            RefreshStore(SqlSearchCodeApply);

        }
        protected void LkBtnSearcbFilter_Click(object sender, EventArgs e)
        {
            //存取篩選項後 控制查詢字串
            SqlSearchCodeApply = "Select * From Storeinfo";

            if ((Ddlcityselect.SelectedValue != "none") || (Ddltypeselect.SelectedValue != "none"))
            {
                SqlSearchCodeApply = SqlSearchCodeApply + " Where";

                if (Ddlcityselect.SelectedValue != "none")
                {
                    SqlSearchCodeApply = SqlSearchCodeApply + " sregion like N'" + Ddlcityselect.SelectedValue.ToString() + "%'";

                    if (Ddltypeselect.SelectedValue != "none")
                    {
                        SqlSearchCodeApply = SqlSearchCodeApply + " And stype=N'" + Ddltypeselect.SelectedValue.ToString() + "'";
                    }
                }
                else if (Ddltypeselect.SelectedValue != "none")
                {
                    SqlSearchCodeApply = SqlSearchCodeApply + " stype=N'" + Ddltypeselect.SelectedValue.ToString() + "'";
                }

            }

            Session["SqlSearchCodeApply"] = SqlSearchCodeApply;
            Response.Redirect("listing.aspx?page=1");

        }
        protected void LkBtnSearcbClear_Click(object sender, EventArgs e)
        {
            Session["SqlSearchCodeApply"]=null;
            Response.Redirect("listing");
        }

        //跳轉至店家資訊頁面
        protected void LkBtn1sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid1+"&type="+Lbl1stype.Text;
            Response.Redirect(surl);
        }
        protected void LkBtn2sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid2+ "&type=" + Lbl2stype.Text;
            Response.Redirect(surl);
        }
        protected void LkBtn3sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid3+ "&type=" + Lbl3stype.Text;
            Response.Redirect(surl);
        }
        protected void LkBtn4sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid4+ "&type=" + Lbl4stype.Text;
            Response.Redirect(surl);
        }
        protected void LkBtn5sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid5+ "&type=" + Lbl5stype.Text;
            Response.Redirect(surl);
        }
        protected void LkBtn6sname_Click(object sender, EventArgs e)
        {
            string surl = "directory_details.aspx?storeid=" + sid6+ "&type=" + Lbl6stype.Text;
            Response.Redirect(surl);
        }

        //Header 按鈕
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

        //加入最愛
        public void Addfavorite(int storeid) 
        {
            SqlConnection SqlPTC = this.SqlPTC();

            //確認登入狀態
            if (Session["email"] == null)
            {
                PageMsg("請先登入!");
            }
            else
            {
                //以登入信箱為基準讀取我的最愛店家內容
                string newfsid;
                
                string SqlMemberSearchcode = "Select fsid From Member Where memail = '" + Session["email"].ToString() + "'";

                SqlPTC.Open();

                SqlCommand Searchcommand = new SqlCommand(SqlMemberSearchcode, SqlPTC);

                SqlDataReader SqlData = Searchcommand.ExecuteReader();
                try
                {
                    if (SqlData.HasRows)
                    {
                        if (SqlData.Read())
                        {   //檢查該資料格是否為空字串或NULL
                            if (SqlData["fsid"].ToString().Trim() == "" || SqlData["fsid"].ToString() == "&nbsp;")
                            {
                                newfsid = storeid.ToString();
                            }
                            else
                            {
                                newfsid = SqlData["fsid"].ToString() + "," + storeid.ToString();
                            }
                            SqlData.Close();

                            //讀取成功後改寫變化部分後以Update重新寫入

                            string SqlMemberUpdatecode = "Update Member SET fsid = @newfsid Where memail = '" + Session["email"].ToString() + "'";

                            SqlCommand Updatecommand = new SqlCommand(SqlMemberUpdatecode, SqlPTC);

                            Updatecommand.Parameters.Add("@newfsid", SqlDbType.NVarChar).Value = newfsid;

                            Updatecommand.ExecuteNonQuery();
                            PageMsg("新增成功!");
                        }
                    }
                }
                catch (Exception ex2)
                {

                    PageMsg("系統連線失敗 \\n請稍後在試\\n請下管理員回報以下錯誤碼:\\n" + ex2);

                }
                finally
                {
                    SqlData.Close();
                }

                SqlPTC.Close();
            }
        }
        protected void LkBtn1favorite_Click(object sender, EventArgs e)
        {
            Addfavorite(int.Parse(sid1));
        }
        protected void LkBtn2favorite_Click(object sender, EventArgs e)
        {
            Addfavorite(int.Parse(sid2));
        }
        protected void LkBtn3favorite_Click(object sender, EventArgs e)
        {
            Addfavorite(int.Parse(sid3));
        }
        protected void LkBtn4favorite_Click(object sender, EventArgs e)
        {
            Addfavorite(int.Parse(sid4));
        }
        protected void LkBtn5favorite_Click(object sender, EventArgs e)
        {
            Addfavorite(int.Parse(sid5));
        }
        protected void LkBtn6favorite_Click(object sender, EventArgs e)
        {
            Addfavorite(int.Parse(sid6));
        }

        //頁碼跳轉控制
        protected void LkBtnpage1_Click(object sender, EventArgs e)
        {
            string surl = "listing.aspx?page=" + LkBtnpage1.Text;
            Response.Redirect(surl);
        }
        protected void LkBtnpage2_Click(object sender, EventArgs e)
        {
            string surl = "listing.aspx?page=" + LkBtnpage2.Text;
            Response.Redirect(surl);
        }
        protected void LkBtnpage3_Click(object sender, EventArgs e)
        {
            string surl = "listing.aspx?page=" + LkBtnpage3.Text;
            Response.Redirect(surl);
        }
        protected void LkBtnpage4_Click(object sender, EventArgs e)
        {
            string surl = "listing.aspx?page=" + LkBtnpage4.Text;
            Response.Redirect(surl);
        }
        protected void LkBtnpage5_Click(object sender, EventArgs e)
        {
            string surl = "listing.aspx?page=" + LkBtnpage5.Text;
            Response.Redirect(surl);
        }
        protected void LkBtnpageleft_Click(object sender, EventArgs e)
        {
            string surl = "listing.aspx?page=" + (page - 1).ToString();
            Response.Redirect(surl);
        }
        protected void LkBtnpageright_Click(object sender, EventArgs e)
        {
            string surl = "listing.aspx?page=" + (page + 1).ToString();
            Response.Redirect(surl);
        }
        protected void LkBtnpagetotop_Click(object sender, EventArgs e)
        {
            Response.Redirect("listing.aspx?page=1");
        }
        protected void LkBtnpagetoend_Click(object sender, EventArgs e)
        {
            string surl = "listing.aspx?page=" + Session["page"].ToString();
            Response.Redirect(surl);
        }

        //導覽查詢類別
        protected void LkBtnrecommandhotel_Click(object sender, EventArgs e)
        {
            SqlSearchCodeApply = "Select * From Storeinfo Where stype = N'住宿'";
            Session["SqlSearchCodeApply"] = SqlSearchCodeApply;
            Response.Redirect("listing.aspx?page=1");
        }

        protected void LkBtnrecommandrestaurant_Click(object sender, EventArgs e)
        {
            SqlSearchCodeApply = "Select * From Storeinfo Where stype = N'餐飲'";
            Session["SqlSearchCodeApply"] = SqlSearchCodeApply;
            Response.Redirect("listing.aspx?page=1");
        }

        protected void LkBtnrecommandspot_Click(object sender, EventArgs e)
        {
            SqlSearchCodeApply = "Select * From Storeinfo Where stype = N'景點'";
            Session["SqlSearchCodeApply"] = SqlSearchCodeApply;
            Response.Redirect("listing.aspx?page=1");
        }

    }
}
