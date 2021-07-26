using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace pettravel
{
    public partial class directory_details : System.Web.UI.Page
    {
        List<string> time = new List<string>();
        List<string> day = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["storeid"] == null)
            {
                Response.Redirect("listing");
            }
            
            //確認讀哪個資料庫
            string Ohyeah = Ohno();
            string sqlstring = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(sqlstring);
            conn.Open();
            string sql1 = @"select * from HotelInfo as h join StoreInfo as s on h.sid = s.sid where h.sid = @id";
            string sql2 = @"select * from RestaurantInfo as r join StoreInfo as s on r.sid = s.sid join RestaurantTime as t on t.rid = r.rid where r.sid = @id";
            string sql3 = @"select * from AttractionInfo as a join StoreInfo as s on a.sid = s.sid join AttractionTime as at on at.aid = a.aid where a.sid = @id";
            if (Ohyeah == "住宿")
            {
                SqlCommand cmd1 = new SqlCommand(sql1, conn);
                cmd1.Parameters.Add("@id", SqlDbType.Int).Value = Request.QueryString["storeid"];
                SqlDataReader rd1 = cmd1.ExecuteReader();
                if (rd1.HasRows)
                {
                    if (rd1.Read())
                    {
                        introduce.Text = rd1["hintroduce"].ToString();
                        service.Text = rd1["hservice"].ToString().Replace(",", "</br>");
                        notice.Text = rd1["hnotice"].ToString().Replace(",", "</br>");
                        type1.Text = rd1["sname"].ToString();
                        type2.Text = rd1["stype"].ToString();
                        phone.Text = rd1["sphone"].ToString();
                        address.Text = rd1["sregion"].ToString() + rd1["saddress"].ToString();
                        c.Text = "入住時間 : " + rd1["hcheckin"].ToString() + "</br>" + "退房時間 : " + rd1["hcheckout"].ToString();
                        //opentime.Text = "退房時間 : " + rd1["hcheckout"].ToString();
                    }
                }
                conn.Close();
            }
            else if (Ohyeah == "餐飲")
            {
                SqlCommand cmd2 = new SqlCommand(sql2, conn);
                cmd2.Parameters.Add("@id", SqlDbType.Int).Value = Request.QueryString["storeid"];
                SqlDataReader rd2 = cmd2.ExecuteReader();
                if (rd2.HasRows)
                {
                    do
                    {
                        while (rd2.Read())
                        {
                            introduce.Text = rd2["rintroduce"].ToString();
                            service.Text = rd2["rservice"].ToString().Replace(",", "</br>");
                            notice.Text = rd2["rnotice"].ToString().Replace(",", "</br>");
                            type1.Text = rd2["sname"].ToString();
                            type2.Text = rd2["stype"].ToString();
                            phone.Text = rd2["sphone"].ToString();
                            address.Text = rd2["sregion"].ToString() + rd2["saddress"].ToString();
                            c.Text = "營業時間 : ";
                            time.Add(rd2["topen"].ToString() + "-" + rd2["tclose"].ToString());
                            day.Add(rd2["rweekofday"].ToString());
                            if (rd2["tremarks"].ToString() == null)
                            {
                                remarks.Text = "";
                            }
                            else
                            {
                                remarks.Text = "&nbsp;&nbsp;&nbsp;&nbsp;" + rd2["tremarks"].ToString();
                            }
                        }
                    } while (rd2.NextResult());
                    if (time.Count == 2)
                    {
                        opentime.Text = "&nbsp;&nbsp;&nbsp;&nbsp;" + day[0].Replace(",", "&nbsp;&nbsp;&nbsp;&nbsp;" + time[0] + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + time[1] + "</br>&nbsp;&nbsp;&nbsp;&nbsp;") + "&nbsp;&nbsp;&nbsp;" + time[0] + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + time[1];
                    }
                    else if (time.Count == 1)
                    {
                        opentime.Text = "&nbsp;&nbsp;&nbsp;&nbsp;" + day[0].Replace(",", "&nbsp;&nbsp;&nbsp;&nbsp;" + time[0] + "</br>&nbsp;&nbsp;&nbsp;&nbsp;") + "&nbsp;&nbsp;&nbsp;" + time[0];
                    }
                    else if (time.Count == 3)
                    {
                        opentime.Text = "&nbsp;&nbsp;&nbsp;&nbsp;" + day[0].Replace(",", "&nbsp;&nbsp;&nbsp;&nbsp;" + time[0] + "&nbsp;&nbsp;&nbsp;&nbsp;" + time[1] + "</br>&nbsp;&nbsp;&nbsp;&nbsp;") + "&nbsp;&nbsp;&nbsp;&nbsp;" + time[0] + "&nbsp;&nbsp;&nbsp;&nbsp;" + time[1] + "</br>&nbsp;&nbsp;&nbsp;&nbsp;" + day[2].Replace(",", "&nbsp;&nbsp;&nbsp;&nbsp;" + time[2] + "</br>&nbsp;&nbsp;&nbsp;&nbsp;") + "&nbsp;&nbsp;&nbsp;&nbsp;" + time[2];
                    }
                }
                conn.Close();
            }
            else if (Ohyeah == "景點")
            {
                SqlCommand cmd3 = new SqlCommand(sql3, conn);
                cmd3.Parameters.Add("@id", SqlDbType.Int).Value = Request.QueryString["storeid"];
                SqlDataReader rd3 = cmd3.ExecuteReader();
                if (rd3.HasRows)
                {
                    if (rd3.Read())
                    {
                        introduce.Text = rd3["aintroduce"].ToString();
                        service.Text = rd3["aservice"].ToString().Replace(",", "</br>");
                        notice.Text = rd3["anotice"].ToString().Replace(",", "</br>");
                        type1.Text = rd3["sname"].ToString();
                        type2.Text = rd3["stype"].ToString();
                        phone.Text = rd3["sphone"].ToString();
                        address.Text = rd3["sregion"].ToString() + rd3["saddress"].ToString();
                        c.Text = "開放時間 : ";
                        opentime.Text = "&nbsp;&nbsp;&nbsp;&nbsp;" + rd3["atweekofday"].ToString().Replace(",", "&nbsp;&nbsp;&nbsp;" + rd3["atopen"].ToString() + "-" + rd3["atclose"] + "</br>&nbsp;&nbsp;&nbsp;&nbsp;") + "&nbsp;&nbsp;&nbsp;" + rd3["atopen"].ToString() + "-" + rd3["atclose"].ToString();
                        if (rd3["atremarks"].ToString() != null)
                        {
                            remarks.Text = "&nbsp;&nbsp;&nbsp;&nbsp;" + rd3["atremarks"].ToString();
                        }
                        else
                        {
                            remarks.Visible = false;
                        }
                    }
                }
                conn.Close();
            }
            //確認是否已經有登入
            if (Session["login"] != null && Session["login"].ToString() == "yes")
            {
                Log.Text = "登出";
                Label1.Text = Session["name"] + " 先生/小姐您好，想帶您的主子去哪玩嗎？";
            }
            else
            {
                Log.Text = "登入";
                PersonalDataLB.Visible = false;
                BusinessInfoLB.Visible = false;
                Label1.Text = "撿屎官好，想帶您的主子去哪玩嗎？";
            }
            lvmsg2.Style.Add("display", "none");
            replymsg.Style.Add("display", "none");

            Session["id"] = Request.QueryString["storeid"];
            Session["type"] = Request.QueryString["type"];

            //留言板
            string sqlstring4 = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString; //從config找到資料庫位置                
            SqlConnection conn4 = new SqlConnection(sqlstring4);
            string sql4 = @"select id,header,name,main,convert(varchar,year(initdate))+'" + "/'+convert(varchar,month(initdate))+'" + "/'+convert(varchar,day(initdate)) as initdate,(select count(*) from Reply where bid=MessageBoard.id) as replycount from MessageBoard where sid=@id";
            SqlCommand cmd4 = new SqlCommand(sql4, conn4);//對資料庫下令的SQL語法
            cmd4.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["storeid"]);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd4);
            DataSet dataset = new DataSet();//創立一個dataset的記憶體資料庫
            dataAdapter.Fill(dataset);//將上面抓到的資料存入dataset內
            GridView1.DataSource = dataset;//DataSource的資料來源是dataset or datatable
            GridView1.DataBind();//資料與欄位合在一起

            
            string[] Filename= new string[5];
            int j = 1;
            foreach (string fname in Directory.GetFileSystemEntries(Server.MapPath("/pic/StoreInfo/" + Convert.ToInt32(Request.QueryString["storeid"]))))
            {
                string path = fname.Replace(Server.MapPath(""),"~");
                Filename[j] = path;
                j++;
            }
            Image1.ImageUrl = Filename[1];
            Image2.ImageUrl = Filename[2];
            Image3.ImageUrl = Filename[3];
            Image4.ImageUrl = Filename[4];
            

            //資料儲存
            Page.DataBind();            
        }         
        protected string Ohno()
        {
            //確認是否有GET到值
            if (Request.QueryString["type"] != null)
            {
                string ooo = Request.QueryString["type"].ToString();
                return ooo;
            }
            else
            {
                Response.Redirect("listing");
                return null;
            }
        }
        protected void website_Click1(object sender, EventArgs e)
        {
            //官方網站
            string sqlstring = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(sqlstring);
            conn.Open();
            string sql = "select * from StoreInfo where sid = @sid";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add("@sid", SqlDbType.Int).Value = Request.QueryString["storeid"];
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                if (rd.Read())
                {
                    Response.Redirect(rd["swebsite"].ToString());
                }
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //LOGO回首頁
            Response.Redirect("index");
        }
        protected void Log_Click(object sender, EventArgs e)
        {
            //登入登出
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

        protected string sName()
        {
            string sqlstring = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(sqlstring);
            conn.Open();
            string sql = "select * from StoreInfo where sid = @sid";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add("@sid", SqlDbType.Int).Value = Request.QueryString["storeid"];
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                if (rd.Read())
                {
                    return rd["sname"].ToString();
                }
            }
            return null;
        }

        protected void PersonalDataLB_Click(object sender, EventArgs e)
        {
            Response.Redirect("personaldata");
        }

        protected void BusinessInfoLB_Click(object sender, EventArgs e)
        {
            Response.Redirect("businessinfo");
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            //開啟留言功能
            if (Session["login"] != null && Session["login"].ToString() == "yes")
            {
                lvmsg2.Style.Add("display", "block()");
                name3.Text = " ";
                header3.Text = " ";
                main3.Text = " ";
                name2.Text = Session["name"].ToString();
            }
            else
            {
                Response.Write("<script>alert('status :\\n" + "請先登入，再嘗試" + "');location.href='" + "login.aspx" + "';</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //留言按鈕
            if (IsPostBack && !IsRefresh)
            {
                string sqlstring = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(sqlstring);
                string sql = @"insert into MessageBoard(sid,name,header,main) values(@id,@name,@header,@main)";
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = Session["id"];
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = Session["name"];
                cmd.Parameters.Add("@header", SqlDbType.NVarChar).Value = Request.Form["header2"];
                cmd.Parameters.Add("@main", SqlDbType.NVarChar).Value = Request.Form["main2"];
                cmd.ExecuteNonQuery();
                conn.Close();                
                string sqlstring2 = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
                SqlConnection conn2 = new SqlConnection(sqlstring2);
                conn2.Open();
                string sql2 = @"select id,header,name,main,convert(varchar,year(initdate))+'" + "/'+convert(varchar,month(initdate))+'" + "/'+convert(varchar,day(initdate)) as initdate,(select count(*) from Reply where bid=MessageBoard.id) as replycount from MessageBoard where sid=@id";
                SqlCommand cmd2 = new SqlCommand(sql2, conn2);
                cmd2.Parameters.Add("@id", SqlDbType.Int).Value = Session["id"];
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd2);
                DataSet dataset = new DataSet();//創立一個dataset的記憶體資料庫
                dataAdapter.Fill(dataset);//將上面抓到的資料存入dataset內
                GridView1.DataSource = dataset;//DataSource的資料來源是dataset or datatable
                GridView1.DataBind();//資料與欄位合在一起}
                conn2.Close();
            }
        }

        private void SetLoadTime()
        {
            Session["loadTime"] = Server.UrlEncode(DateTime.Now.ToString());
        }

        /// 取得值，指出網頁是否經由重新整理動作回傳 (PostBack)
        protected bool IsRefresh
        {
            get
            {
                if (HttpContext.Current.Request["loadTime"] as string == Session["loadTime"] as string)
                {
                    SetLoadTime();
                    return false;
                }

                return true;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "replyname")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string n = GridView1.Rows[index-1].Cells[2].Text;
                string m = GridView1.Rows[index-1].Cells[3].Text;
                string sqlstring = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(sqlstring);
                string sql = @"select * from MessageBoard where name=@name and main=@main";
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = n;
                cmd.Parameters.Add("@main", SqlDbType.NVarChar).Value = m;
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    if (rd.Read())
                    {
                        Session["replyid"] = rd["id"].ToString();
                    }
                }
                rd.Close();
                conn.Close();
            }
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //開啟回覆功能
            if (Session["login"] != null && Session["login"].ToString() == "yes")
            {
                replymsg.Style.Add("display", "block()");
                name2.Text = " ";
                header2.Text = " ";
                main2.Text = " ";
                name3.Text = Session["name"].ToString();
            }
            else
            {
                Response.Write("<script>alert('status :\\n" + "請先登入，再嘗試" + "');location.href='" + "login.aspx" + "';</script>");
            }
        }

        protected void confirm_Click1(object sender, EventArgs e)
        {
            //確定回覆按鈕
            if (IsPostBack && !IsRefresh)
            {
                string sqlstring = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(sqlstring);
                string sql = @"insert into Reply(bid,name,main) values(@id,@name,@main)";
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = Session["replyid"];
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = Session["name"];
                cmd.Parameters.Add("@main", SqlDbType.NVarChar).Value = Request.Form["main3"];
                cmd.ExecuteNonQuery();
                conn.Close();
                string sqlstring2 = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
                SqlConnection conn2 = new SqlConnection(sqlstring2);
                conn2.Open();
                string sql2 = @"select id,header,name,main,convert(varchar,year(initdate))+'" + "/'+convert(varchar,month(initdate))+'" + "/'+convert(varchar,day(initdate)) as initdate,(select count(*) from Reply where bid=MessageBoard.id) as replycount from MessageBoard where sid=@id";
                SqlCommand cmd2 = new SqlCommand(sql2, conn2);
                cmd2.Parameters.Add("@id", SqlDbType.Int).Value = Session["id"];
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd2);
                DataSet dataset = new DataSet();
                dataAdapter.Fill(dataset);
                GridView1.DataSource = dataset;
                GridView1.DataBind();
                conn2.Close();
            }
        }
    }
}