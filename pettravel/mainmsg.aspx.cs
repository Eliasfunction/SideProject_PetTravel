using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace pettravel
{
    public partial class mainmsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("listing");
            }
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];

                string sqlstring = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;

                SqlConnection conn = new SqlConnection(sqlstring);

                string sql = @"select id,header,name,main,convert(varchar,year(initdate))+'" + "/'+convert(varchar,month(initdate))+'" + "/'+convert(varchar,day(initdate)) as initdate from MessageBoard where id=@id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.Add("@id", SqlDbType.NVarChar);
                cmd.Parameters["@id"].Value = Request["id"];
                conn.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    Message_header.Text = rd["header"].ToString();
                    Message_Name.Text = rd["name"].ToString();
                    Message_Time.Text = rd["initDate"].ToString();
                    Main.Text = rd["main"].ToString();
                }
                rd.Close();

            }
            string rsqlstring = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
            SqlConnection rconn = new SqlConnection(rsqlstring);
            SqlCommand rcmd = new SqlCommand($"SELECT id,bid, name, main,convert(varchar,year(initdate))+'" + "/'+convert(varchar,month(initdate))+'" + "/'+convert(varchar,day(initdate)) as initdate FROM reply where(bid =@id)", rconn);
            rcmd.Parameters.Add("@id", SqlDbType.NVarChar);
            rcmd.Parameters["@id"].Value = Request.QueryString["id"];
            rconn.Open();
            SqlDataReader rereader = rcmd.ExecuteReader();
            Repeater1.DataSource = rereader;
            Repeater1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string surl = "replymsg.aspx?id=" + Request.QueryString["id"];
            Response.Redirect(surl);
        }
    }
}