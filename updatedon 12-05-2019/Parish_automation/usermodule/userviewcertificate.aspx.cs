using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation.classes;
using System.Data;

namespace Parish_automation.usermodule
{
    
    public partial class userviewcertificate : System.Web.UI.Page
    {
        viewCertificate obj = new viewCertificate();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Id1 = Session["user"].ToString();
                BindFamily();


            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void BindFamily()
        {
            DataTable dtCheck = new DataTable();
            dtCheck = obj.DispalyCertificate();
            if (dtCheck.Rows.Count > 0)
            {
                // GridView1.DataSourceID = string.Empty;
                GridView1.DataSource = dtCheck;
                GridView1.DataBind();
            }
        }
        protected void btnApprove_Click(object sender, EventArgs e)
        {

        }
    }
}