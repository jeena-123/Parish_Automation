using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation.classes;
using System.Data;
namespace Parish_automation.AdminModule
{
    public partial class AddVicer : System.Web.UI.Page
    {
        UserProfileClass obj = new UserProfileClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Vicername = txtname.Text;
            obj.Viceraddress = txtaddress.Text;
            obj.Vicermobno = txtmobno.Text;
            obj.Viceremail = txtemail.Text;
            obj.Username = txtusername.Text;
            obj.Password = txtpassword.Text;
            obj.From = yearfrom.Text;
            obj.To = yearto.Text;
            obj.InsertParameter();

             txtname.Text="";
             txtaddress.Text = ""; 
             txtmobno.Text = "";
            txtemail.Text = "";
            txtusername.Text = "";
            txtpassword.Text = "";
            yearfrom.Text = "";
            yearto.Text="";

        }
    }
}