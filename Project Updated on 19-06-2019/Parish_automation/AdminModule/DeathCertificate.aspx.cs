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
    public partial class DeathCertificate : System.Web.UI.Page
    {
        viewCertificate obj = new viewCertificate();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Updatebutton = Session["id"].ToString();
            obj.Updatebutton2 = Session["member_id"].ToString();
            DataTable dt = new DataTable();
            dt = obj.PrintDeathCertificate();
            if (dt.Rows.Count > 0)
            {
                name.Text = Convert.ToString(dt.Rows[0][0]);
                name0.Text = Convert.ToString(dt.Rows[0][1]);
                name1.Text = Convert.ToString(dt.Rows[0][2]);
                name2.Text = Convert.ToString(dt.Rows[0][3]);
            }

        }

        

        protected void btnPrint_Click(object sender, EventArgs e)
        {

        }
    }
}