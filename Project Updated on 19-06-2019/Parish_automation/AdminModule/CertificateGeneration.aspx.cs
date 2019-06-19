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
    public partial class CertificateGeneration : System.Web.UI.Page
    {
        viewCertificate obj = new viewCertificate();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
           Label1.Text= Session["id"].ToString();
            obj.Updatebutton = Session["id"].ToString();
            DataTable dtCheck = new DataTable();
            dtCheck = obj.Checkcertificatetype();
            if (dtCheck.Rows.Count > 0)
            {
                name.Text = Convert.ToString(dtCheck.Rows[0][0]);
                fathername.Text = Convert.ToString(dtCheck.Rows[0][1]);
                mothername.Text = Convert.ToString(dtCheck.Rows[0][2]);
                dob.Text = Convert.ToString(dtCheck.Rows[0][3]);
                vicername.Text = Convert.ToString(dtCheck.Rows[0][4]);
                churchname.Text = Convert.ToString(dtCheck.Rows[0][5]);
                baptisamdate.Text = Convert.ToString(dtCheck.Rows[0][6]);


            }
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {

        }

               


    }
}