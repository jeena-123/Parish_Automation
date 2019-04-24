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
    public partial class RegisterRequest : System.Web.UI.Page
    {
        death obj = new death();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtReg = new DataTable();
            dtReg = obj.DisplyRequestDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg;
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {
           
        }
    }
}