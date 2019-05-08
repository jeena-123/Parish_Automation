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
    public partial class MarriageCertificate : System.Web.UI.Page
    {
        viewCertificate obj = new viewCertificate();
        protected void Page_Load(object sender, EventArgs e)
        {
            bridename.Text = Session["id"].ToString();
            obj.Updatebutton = Session["id"].ToString();
            obj.Updatebutton2 = Session["member_id"].ToString();
            DataTable dt = new DataTable();
            dt = obj.PrintName();
            if (dt.Rows.Count > 0)
            {
                bridename.Text = Convert.ToString(dt.Rows[0][0]);
            }
                DataTable dtmarr = new DataTable();
            dtmarr = obj.CheckMarriageCertificate();
            if(dtmarr.Rows.Count > 0)
            {
               // bridename.Text = Convert.ToString(dtmarr.Rows[0][0]);
                groomname.Text = Convert.ToString(dtmarr.Rows[0][0]);
                churchname.Text = Convert.ToString(dtmarr.Rows[0][1]);
                marriagedate.Text = Convert.ToString(dtmarr.Rows[0][2]);
                withness1.Text = Convert.ToString(dtmarr.Rows[0][3]);
                withness2.Text = Convert.ToString(dtmarr.Rows[0][4]);
                priestname.Text = Convert.ToString(dtmarr.Rows[0][5]);

            }


        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {

        }
    }
}