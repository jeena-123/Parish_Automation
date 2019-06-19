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
    public partial class Editvicer : System.Web.UI.Page
    {
        Associationmemberclass obj = new Associationmemberclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindFamily();
            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void BindFamily()
        {

            DataTable dtReg = new DataTable();
            dtReg = obj.DisplyRequestDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg;
                GridView1.DataBind();
            }
        }
        protected void btnApprove1_Click(object sender, EventArgs e)
        {
            obj.updateVicer();
        }
    }
}