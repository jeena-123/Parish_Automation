using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation;
using System.Data;

namespace Parish_automation
{
    public partial class _Default : Page
    {
        login obj = new login();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button2_Click1(object sender, EventArgs e)
        {
            obj.Username = username1.Text;
            obj.Password = password.Text;

            string type1 = "";

            type1 = obj.ExecuteSelect();

            
            if (type1 != null)
            {

                ;
                if (type1 == "admin")
                {
                    Session["admin"] = username1.Text;
                    //Label3.Text = "Admin success fully logged";
                    Response.Redirect("~/AdminModule/AdminHomePage.aspx");
                }
                else if (type1 == "family_member")
                {
                    Session["user"] = username1.Text;
                    // Label1.Text = "familymember success fully logged";
                    Response.Redirect("~/usermodule/UserProfile.aspx");
                }

            }
            else
            {
                Label1.Text = "UserId & Password Is not correct Try again..!!";
            }
        }
    }
}