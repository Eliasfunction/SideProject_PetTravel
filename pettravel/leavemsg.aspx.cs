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
    public partial class leavemsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null && Session["type"] == null)
            {
                Response.Redirect("listing");
            }
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            string sqlstring =System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(sqlstring);
            string sql = @"insert into MessageBoard(sid,name,header,main) values(@id,@name,@header,@main)";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Session["id"];
            cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = name.Text;
            cmd.Parameters.Add("@header", SqlDbType.NVarChar).Value = header.Text;
            cmd.Parameters.Add("@main", SqlDbType.NVarChar).Value = main.Text;
            cmd.ExecuteNonQuery();
            conn.Close();
            string surl = "directory_details.aspx?storeid=" + Session["id"] + "&type=" + Session["type"];
            Response.Redirect(surl);
        }

        protected void rewrite_Click(object sender, EventArgs e)
        {
            name.Text = "";
            header.Text = "";
            main.Text = "";
        }
    }
}