using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;
using Parish_automation.classes;
using System.Data;

namespace Parish_automation.AdminModule
{
    public partial class RegisterRequest : System.Web.UI.Page
    {
        death obj = new death();
        string toemail,pswd,uname,msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            BindFamily();
        }
       

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            var closeLink = (Control)sender;
            GridViewRow row = (GridViewRow)closeLink.NamingContainer;
            string firstCellText = row.Cells[0].Text; // here we are
            obj.Updatebutton = firstCellText;
            obj.UpdateTable();
            DataTable dtemail = new DataTable();
            dtemail = obj.getemail();
            if(dtemail.Rows.Count>0)
            {
                toemail = dtemail.Rows[0]["emailid"].ToString();
                uname= dtemail.Rows[0]["username"].ToString();
                pswd= dtemail.Rows[0]["password"].ToString();
            }
            msg = "Sehion Pally Registration Completed Successfully!!" +
                " Your Login username & password is;" +
                " username :" + uname + "password :" + pswd;
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter ht = new HtmlTextWriter(sw))
                {
                    StringReader sr = new StringReader(sw.ToString());
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("sehionorthdoxchurch@gmail.com");
                    mail.To.Add(toemail);
                    mail.Subject = "Forgot Password Request";
                    // string body = LblMsg.Text.ToString();
                    mail.Body = msg;
                    mail.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    System.Net.NetworkCredential nt = new NetworkCredential();
                    nt.UserName = "sehionorthdoxchurch@gmail.com";
                    nt.Password = "sehionorthdox@123";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = nt;
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }
            }
            BindFamily();
        }

        private void BindFamily()
        {

            DataTable dtReg = new DataTable();
            dtReg = obj.DisplyRequestDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.FindControl("hdnApp") as HiddenField).Value == "0")
                {
                    (e.Row.FindControl("Button1") as Button).Enabled = true;
                }
                else
                {
                    (e.Row.FindControl("Button1") as Button).Enabled = false;
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}