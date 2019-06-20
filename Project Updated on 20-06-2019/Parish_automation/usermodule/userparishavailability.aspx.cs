using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Parish_automation.classes;


namespace Parish_automation
{
    
    public partial class userparishavailability : System.Web.UI.Page
    {
        BookingClass objBk = new BookingClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            objBk.Event_type = ddleventtype.SelectedItem.ToString();
            objBk.Event_date = eventdate.Text.ToString();
            objBk.Parish_hall = ddlhalltype.SelectedItem.ToString();
            DataTable dtCheck = new DataTable();
            dtCheck = objBk.CheckAvail();
            if (dtCheck.Rows.Count > 0)
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert(' Already Booked')</script>");
            }
            else
            {
                Response.Redirect("~/usermodule/Bookhall.aspx");
            }
        }

        protected void eventdate_TextChanged(object sender, EventArgs e)
        {
            DateTime txtdate = Convert.ToDateTime(eventdate.Text);
            var todaysDate = DateTime.Today;
            int result = DateTime.Compare(txtdate, todaysDate);
            if(result<=0)
            {
                LblMsg.Visible = true;
                eventdate.Text = "";
            }
            else
            {
                LblMsg.Visible = false;
            }
        }
    }
}