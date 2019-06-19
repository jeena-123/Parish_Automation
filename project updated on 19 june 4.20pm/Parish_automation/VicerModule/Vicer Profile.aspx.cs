using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation.classes;
using System.Data;

namespace Parish_automation.VicerModule
{
    public partial class Vicer_Profile : System.Web.UI.Page
    {
        UserProfileClass obj = new UserProfileClass();
        protected void Page_Load(object sender, EventArgs e)
        {
             
            //Label1.Text = Session["vicer"].ToString();
            obj.Id1 = Session["vicer"].ToString();
            DataTable dt1 = new DataTable();
            dt1 = obj.FetchName();
            if (dt1.Rows.Count > 0)
            {
                Label1.Text = Convert.ToString(dt1.Rows[0][0]);
                
            }
        }
    }
}