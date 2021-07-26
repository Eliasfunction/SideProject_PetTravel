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
    public partial class replymsg : System.Web.UI.Page
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
                string config = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(config);
                SqlCommand Command = new SqlCommand($"SELECT id, header, name, main, initDate FROM MessageBoard where(id =@id)", connection);
                Command.Parameters.Add("@id", SqlDbType.Int);
                Command.Parameters["@id"].Value = Convert.ToInt32(Request.QueryString["id"]);
                connection.Open();
                SqlDataReader reader = Command.ExecuteReader();

                if (reader.Read())
                {
                    Reply_Header.Text = "RE:" + reader["header"].ToString();
                }

                connection.Close();
            }
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Reply_Main.Text) && string.IsNullOrEmpty(Reply_Name.Text))
            {
                Message.Text = "請填名字跟內容";
            }

            else if (string.IsNullOrEmpty(Reply_Name.Text))
            {
                Message.Text = "請填名字";
            }
            else if (string.IsNullOrEmpty(Reply_Main.Text))
            {
                Message.Text = "請填內容";
            }

            else
            {
                string config = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["PetTravelConnectionString"].ConnectionString;
                SqlConnection Connection = new SqlConnection(config);
                SqlCommand command = new SqlCommand($"INSERT INTO Reply(name,main,bid) VALUES(@name, @main,@id)", Connection);                
                command.Parameters.Add("@name", SqlDbType.NVarChar);
                command.Parameters["@name"].Value = Reply_Name.Text;
                command.Parameters.Add("@main", SqlDbType.NVarChar);
                command.Parameters["@main"].Value = Reply_Main.Text;
                command.Parameters.Add("@id", SqlDbType.Int);
                command.Parameters["@id"].Value = Convert.ToInt32(Request.QueryString["id"]);
                Connection.Open();
                command.ExecuteNonQuery();
                Connection.Close();
                string surl= "directory_details.aspx?storeid=" + Session["id"] + "&type="+Session["type"];
                Response.Redirect(surl);
            }
        }

        protected void rewrite_Click(object sender, EventArgs e)
        {
            Reply_Header.Text = "";
            Reply_Main.Text = "";
            Reply_Name.Text = "";
        }
    }
}