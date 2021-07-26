using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pettravel
{
    public partial class elements : System.Web.UI.Page
    {
        string city;

        List<string> fimg = new List<string>();
        List<string> flctn = new List<string>();
        List<string> fcity = new List<string>();
        List<string> fdo = new List<string>();

        List<string> simg = new List<string>();
        List<string> slctn = new List<string>();
        List<string> scity = new List<string>();
        List<string> sdo = new List<string>();

        List<string> timg = new List<string>();
        List<string> tlctn = new List<string>();
        List<string> tcity = new List<string>();
        List<string> tdo = new List<string>();

        List<int> id = new List<int>();
        
        public SqlConnection SqlPTC(string conet)
        {  //統一更改連線資料
            string connect_txt = $"{conet}ConnectionString";
            SqlConnection Sql = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings[connect_txt].ConnectionString);
            return Sql;
        }
        
        public void PageMsg(string msgcode)
        {  //統一設定錯誤訊息
            Response.Write("<script>alert('status :\n" + msgcode + "');</script>");
        }
        public void PageMsg(string msgcode, string href)
        {  //統一設定錯誤訊息
            Response.Write("<script>alert('status :\n" + msgcode + "');location.href='" + href + "';</script>");
        }


        protected void Confirmation_date() 
        {
            try
            {
                string st = Request.QueryString["sday"];
                string ed = Request.QueryString["rday"];
                if (st != null || ed != null)
                {
                    
                    string[] sday = st.Split('-');
                    string[] rday = ed.Split('-');
                    int sda = int.Parse(sday[2]);
                    int eda = int.Parse(rday[2]);
                    dtitle1.Text = st;
                    dtitle2.Text = $"{sday[0]}-{sday[1]}-{int.Parse(sday[2])+1}";
                    dtitle3.Text = ed;
                    if ((eda - sda) != 2)
                    {
                        PageMsg("天數錯誤請重新選擇");
                        Response.Redirect("index");
                    }
                }
            }
            catch (Exception ex) 
            {
                PageMsg("天數錯誤請重新選擇/n"+ ex);
                Response.Redirect("index");
            }
            
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

            Confirmation_date();
            try
            {
                if (Request.QueryString["city"] != null)
                {
                    SqlConnection sqlconnect = SqlPTC("PetTravel");
                    string sqlcityselect = $@"select * from itinerary where icity=N'{Request.QueryString["city"]}'";
                    SqlCommand city = new SqlCommand(sqlcityselect, sqlconnect);
                    sqlconnect.Open();
                    SqlDataReader SqlData = city.ExecuteReader();
                    if (SqlData.HasRows)
                    {

                        do
                        {
                            while (SqlData.Read() && SqlData["iday"].ToString() == "第一天")
                            {
                                if (SqlData["iimage"].ToString() != "")
                                {
                                    fimg.Add(SqlData["iimage"].ToString());
                                }
                                else
                                {
                                    fimg.Add(@"assets\img\info\none.jpg");
                                }
                                flctn.Add(SqlData["ilocation"].ToString());
                                //fcity.Add(SqlData["city"].ToString());
                                fdo.Add(SqlData["ido"].ToString());
                                id.Add((int)(SqlData["iid"]));
                            }

                            while (SqlData.Read() && SqlData["iday"].ToString() == "第二天")
                            {
                                if (SqlData["iimage"].ToString() != "")
                                {
                                    simg.Add(SqlData["iimage"].ToString());
                                }
                                else
                                {
                                    simg.Add(@"assets\img\info\none.jpg");
                                }
                                slctn.Add(SqlData["ilocation"].ToString());
                                //scity.Add(SqlData["city"].ToString());
                                sdo.Add(SqlData["ido"].ToString());
                                id.Add((int)(SqlData["iid"]));
                            }
                            while (SqlData.Read() && SqlData["iday"].ToString() == "第三天")
                            {
                                if (SqlData["iimage"].ToString() != "")
                                {
                                    timg.Add(SqlData["iimage"].ToString());
                                }
                                else
                                {
                                    timg.Add(@"assets\img\info\none.jpg");
                                }
                                tlctn.Add(SqlData["ilocation"].ToString());
                                //tcity.Add(SqlData["city"].ToString());
                                tdo.Add(SqlData["ido"].ToString());
                                id.Add((int)(SqlData["iid"]));
                            }
                        }
                        while (SqlData.NextResult());
                        try
                        {
                            
                            Image1.ImageUrl = fimg[0];
                            LinkButton1.Text = flctn[0];
                            Label1.Text = fdo[0];

                            Image2.ImageUrl = fimg[1];
                            LinkButton2.Text = flctn[1];
                            Label2.Text = fdo[1];

                            Image3.ImageUrl = fimg[2];
                            LinkButton3.Text = flctn[2];
                            Label3.Text = fdo[2];

                            Image4.ImageUrl = fimg[3];
                            LinkButton4.Text = flctn[3];
                            Label4.Text = fdo[3];

                            Image5.ImageUrl = fimg[4];
                            LinkButton5.Text = flctn[4];
                            Label5.Text = fdo[4];

                            Image6.ImageUrl = fimg[5];
                            LinkButton6.Text = flctn[5];
                            Label6.Text = fdo[5];
                        }
                        catch { }
                        try
                        {
                            Image7.ImageUrl = simg[0];
                            LinkButton7.Text = slctn[0];
                            Label7.Text = sdo[0];

                            Image8.ImageUrl = simg[1];
                            LinkButton8.Text = slctn[1];
                            Label8.Text = sdo[1];

                            Image9.ImageUrl = simg[2];
                            LinkButton9.Text = slctn[2];
                            Label9.Text = sdo[2];

                            Image10.ImageUrl = simg[3];
                            LinkButton10.Text = slctn[3];
                            Label10.Text = sdo[3];

                            Image11.ImageUrl = simg[4];
                            LinkButton11.Text = slctn[4];
                            Label11.Text = sdo[4];

                            Image12.ImageUrl = simg[5];
                            LinkButton12.Text = slctn[5];
                            Label12.Text = sdo[5];
                        }
                        catch { }
                        try
                        {
                            Image13.ImageUrl = timg[0];
                            LinkButton13.Text = tlctn[0];
                            Label13.Text = tdo[0];

                            Image14.ImageUrl = timg[1];
                            LinkButton14.Text = tlctn[1];
                            Label14.Text = tdo[1];

                            Image15.ImageUrl = timg[2];
                            LinkButton15.Text = tlctn[2];
                            Label15.Text = tdo[2];

                            Image16.ImageUrl = timg[3];
                            LinkButton16.Text = tlctn[3];
                            Label16.Text = tdo[3];

                            Image17.ImageUrl = timg[4];
                            LinkButton17.Text = tlctn[4];
                            Label17.Text = tdo[4];

                            Image18.ImageUrl = timg[5];
                            LinkButton18.Text = tlctn[5];
                            Label18.Text = tdo[5];
                        }
                        catch { }
                    }
                    else { }
                    sqlconnect.Close();
                }
                else
                {
                    Response.Redirect("index");
                }
            }
            catch (Exception ex) 
            {
                PageMsg("系統連線失敗 \\n請稍後在試\\n請下管理員回報以下錯誤碼:\\n" + ex);
                Response.Redirect("index");
            }
            
            
            int numrows = 3;
            int numcells = 2;
            for (int j = 0; j < numrows; j++)
            {
                TableRow r = new TableRow();
                for (int i = 0; i < numcells; i++)
                {
                    TableCell c = new TableCell();
                    c.Controls.Add(new LiteralControl("row "
                        + j.ToString() + ", cell " + i.ToString()));
                    r.Cells.Add(c);
                }
                Table1.Rows.Add(r);
            }



            //檢查 登入狀態碼 是否有值
            if (Session["login"] != null && Session["login"].ToString() == "yes")
            {
                //有登入狀態
                Log.Text = "登出";
                title_lb.Text = Session["name"] + " 先生/小姐您好，以下是您的行程表~";
            }
            else
            {
                //無登入狀態
                Log.Text = "登入";
                title_lb.Text = "撿屎官好，以下是您的行程表~";
                PersonalDataLB.Visible = false;
                BusinessInfoLB.Visible = false;
            }
        }
        protected void Log_Click(object sender , EventArgs e) 
        {
            if (Session["login"] != null && Session["login"].ToString() == "yes")
            {
                //有登入狀態 登出
                Log.Text = "登入";
                title_lb.Text = "撿屎官好，以下是您的行程表~";
                PersonalDataLB.Visible = false;
                BusinessInfoLB.Visible = false;
                Session.Abandon();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('" + "您已成功登出" + "');", true);
            }
            else
            {
                //無登入狀態 跳轉登入頁
                Response.Redirect("login.aspx");
            }
        }

        protected void lkbtn1_Click(object sender, EventArgs e)
        {
            string surl = $"directory_details.aspx?storeid=";
        }
        protected void lkbtn2_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn3_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn4_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn5_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn6_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn7_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn8_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn9_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn10_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn11_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn12_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn13_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn14_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn15_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn16_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn17_Click(object sender, EventArgs e)
        {

        }
        protected void lkbtn18_Click(object sender, EventArgs e)
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
    }
}