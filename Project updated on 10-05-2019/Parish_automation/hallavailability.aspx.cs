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
    public partial class hallavailability : System.Web.UI.Page
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
                if(dtCheck.Rows.Count>0)
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert(' Already Booked')</script>");
                }
                else
                {
                    Response.Redirect("~/ParishHallRegister.aspx");               
                }

        }
    }
}