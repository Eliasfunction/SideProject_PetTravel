using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pettravel
{
    public partial class Team : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
                Label1.Text = "  ";
            }
        }

        protected void Logo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("index");
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
                //已登入狀態 註銷登入(登出)
                Log.Text = "登入";
                Label1.Text = "撿屎官好!!</br>想帶您的主子去哪玩嗎？";

                Session.Abandon();
                PersonalDataLB.Visible = false;
                BusinessInfoLB.Visible = false;
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('您已成功登出');", true);
            }
            else
            {
                //未登入狀態 跳轉登入頁
                Response.Redirect("login.aspx");
            }
        }
    }
}