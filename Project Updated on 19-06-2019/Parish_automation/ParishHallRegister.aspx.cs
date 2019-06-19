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
    public partial class ParishHallRegister : System.Web.UI.Page
    {
        Registerbooking obj = new Registerbooking();
        public double audi_amount;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Name1 = txtname.Text;
            // obj.Id = familyid.Text;
            obj.Address = txtaddress.Text;
            obj.Mobno = txtmob.Text;
            obj.Email = txtemail.Text;
            obj.Audiname = ddlaudiname.Text.ToString();
            obj.Eventtype = ddleventtype.Text.ToString();
            obj.Eventdate = txtdate.Text;
            obj.Eventdays = ddlnoofdays.Text.ToString();
            obj.Amount = txtamount.Text;
            obj.InsertParameter();

            txtname.Text = "";
            txtaddress.Text="";
            txtmob.Text="";
            txtemail.Text="";
            ddlaudiname.SelectedIndex = 0;
                ddleventtype.SelectedIndex=0;
            txtdate.Text="";
             ddlnoofdays.SelectedIndex=0;
             txtamount.Text="";





        }

        protected void ddlaudiname_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlnoofdays_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlaudiname.SelectedItem.ToString() == "Sehion Center")
            {
                audi_amount = 1000;
            }
            else if (ddlaudiname.SelectedItem.ToString() == "Sehion parish")
            {
                audi_amount = 800;
            }
            else if (ddlaudiname.SelectedItem.ToString() == "Both")
            {
                audi_amount = 1800;
            }

            if (ddlnoofdays.SelectedItem.ToString()== "Full Day")
            {
                txtamount.Text =Convert.ToString(audi_amount);
            }
            else if(ddlnoofdays.SelectedItem.ToString()== "Forenoon" || ddlnoofdays.SelectedItem.ToString()== "Afternoon")
            {
                double amt = audi_amount / 2;
                txtamount.Text = Convert.ToString(amt);
            }
            else if(ddlnoofdays.SelectedItem.ToString()== "2Days")
            {
                double amt = audi_amount * 2;
                txtamount.Text = Convert.ToString(amt);
            }
        }
    }
}