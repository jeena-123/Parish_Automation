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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Name = txtname.Text;
            obj.Address = txtaddress.Text;
            obj.Mob_no =Convert.ToDouble(txtmob.Text);
            obj.Emailid = txtemail.Text;
            obj.Auditorium_name = ddlaudiname.Text.ToString();
            obj.Event_type = ddleventtype.Text.ToString();
            obj.Event_date = txtdate.Text;
            obj.No_of_days = ddlnoofdays.Text.ToString();
            obj.Amount = txtamount.Text;
            obj.InsertBookingDetails();

        }
    }
}