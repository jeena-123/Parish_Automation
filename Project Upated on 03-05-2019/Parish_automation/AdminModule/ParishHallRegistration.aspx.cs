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
    
    public partial class ParishHallRegistration : System.Web.UI.Page
    {
        death obj = new death();
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
            dtReg = obj.DisplyParishRequestDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg;
                GridView1.DataBind();
            }
        }
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            var closeLink = (Control)sender;
            GridViewRow row = (GridViewRow)closeLink.NamingContainer;
            string firstCellText = row.Cells[0].Text; // here we are
            obj.Updatebutton2 = firstCellText;
            obj.UpdateTable2();
            BindFamily();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.FindControl("hdnApp") as HiddenField).Value == "0")
                {
                    (e.Row.FindControl("Button1") as Button).Enabled = true;
                }
                else
                {
                    (e.Row.FindControl("Button1") as Button).Enabled = false;
                }
            }
        }
    }
    

}