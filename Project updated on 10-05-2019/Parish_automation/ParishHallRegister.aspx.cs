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
        BookingClass obj = new BookingClass();
        public double audi_amount;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Name = txtname.Text;
            obj.Address = txtaddress.Text;
            obj.Mob_no =txtmob.Text;
            obj.Emailid = txtemail.Text;
            obj.Auditorium_name = ddlaudiname.Text.ToString();
            obj.Event_type = ddleventtype.Text.ToString();
            obj.Event_date = txtdate.Text;
            obj.No_of_days = ddlnoofdays.Text.ToString();
            obj.Amount = txtamount.Text;
            obj.InsertBookingDetails();

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