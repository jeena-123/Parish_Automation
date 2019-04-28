using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation.classes;
using System.Data;

namespace Parish_automation
{
    public partial class Bookhall : System.Web.UI.Page
    {
        UserProfileClass obj = new UserProfileClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Id1 = Session["user"].ToString();
            obj.Name = txtname.Text;
            obj.Address = txtaddress.Text;
            obj.Mobno = txtmob.Text;
            obj.Email = txtemail.Text;
            obj.ExecuteSelect();
            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                txtname.Text = Convert.ToString(dt1.Rows[0][0]);
                txtaddress.Text = Convert.ToString(dt1.Rows[0][1]);
                txtmob.Text = Convert.ToString(dt1.Rows[0][2]);
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Name = txtname.Text;
            obj.Address = txtaddress.Text;
            obj.Mobno = txtmob.Text;
            obj.Email = txtemail.Text;
            obj.Audiname = ddlaudiname.Text.ToString();
            obj.Eventtype = ddleventtype.Text.ToString();
            obj.Eventdate = txtdate.Text;
            obj.Eventdays = ddlnoofdays.Text.ToString();
            obj.Amount = txtamount.Text;
            obj.InsertParameter();

        }
    }
}