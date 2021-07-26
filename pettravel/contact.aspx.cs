using System;
using System.Net.Mail;
using System.Web.UI;

namespace pettravel
{
    public partial class contact : System.Web.UI.Page
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
                Label1.Text = "撿屎官好，想帶您的主子去哪玩嗎？";
                PersonalDataLB.Visible = false;
                BusinessInfoLB.Visible = false;
            }
        }

        protected void Send_Mail()
        {
            
        }

        protected void Logo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("index.aspx");
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

        protected void Send_Click(object sender, EventArgs e)
        {
            string mailFrom = EmailTB.Text;
            string nameFrom = NameTB.Text;
            string subject = SubjectTB.Text;
            string message = MessageTB.Text;
            try
            {
                MailMessage msg = new MailMessage();
                msg.To.Add("sushengyin1989@gmail.com");
                //msg.To.Add("b@b.com");可以發送給多人
                //msg.CC.Add("c@c.com");
                //msg.CC.Add("c@c.com");可以抄送副本給多人 
                //這裡可以隨便填，不是很重要
                msg.From = new MailAddress("watertest500@gmail.com", nameFrom, System.Text.Encoding.UTF8);
                /* 上面3個參數分別是發件人地址（可以隨便寫），發件人姓名，編碼*/
                msg.Subject = subject;//郵件標題
                msg.SubjectEncoding = System.Text.Encoding.UTF8;//郵件標題編碼
                msg.Body = message; //郵件內容
                msg.BodyEncoding = System.Text.Encoding.UTF8;//郵件內容編碼 
                //msg.Attachments.Add(new Attachment(@"D:\test2.docx"));  //附件
                msg.IsBodyHtml = true;//是否是HTML郵件 
                                      //msg.Priority = MailPriority.High;//郵件優先級 

                SmtpClient MySmtp = new SmtpClient("smtp.gmail.com",25);
                MySmtp.Credentials = new System.Net.NetworkCredential("watertest500", "uutzoydopqpcbdbn");
                MySmtp.EnableSsl = true;
                MySmtp.Send(msg); //寄出信件
                MySmtp.Dispose();
                msg.Dispose();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('" + "您已成功寄出" + "');", true);
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "alert('" + ex.Message + "');", true);
            }
        }
    }
}