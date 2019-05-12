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
    
    public partial class communitycertificate : System.Web.UI.Page
    {
        viewCertificate obj = new viewCertificate();
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["id"].ToString();
            obj.Updatebutton = Session["id"].ToString();
            DataTable dtCheck = new DataTable();
            dtCheck = obj.Checkcertificatetype();
            if (dtCheck.Rows.Count > 0)
            {
                name.Text = Convert.ToString(dtCheck.Rows[0][0]);
                name1.Text = Convert.ToString(dtCheck.Rows[0][0]);



            }
            
            {

            }

        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {

        }
    }
}