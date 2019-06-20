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
    public partial class EditMasavari : System.Web.UI.Page
    {
        register obj = new register();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();

            }
        }
        public void Bind()
        {
            
            DataTable dt2 = new DataTable();
            dt2 = obj.UpdateFamilyIncome();
            if (dt2.Rows.Count > 0)
            {
                GridView1.DataSource = dt2;
                GridView1.DataBind();
            }
            else
            {
                dt2.Rows.Add(dt2.NewRow());
                GridView1.DataSource = dt2;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind();


        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String id1 = Convert.ToString(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            TextBox textid = (TextBox)row.Cells[0].Controls[0];
            TextBox textfname = (TextBox)row.Cells[1].Controls[0];
            TextBox textname = (TextBox)row.Cells[2].Controls[0];
            TextBox textlname = (TextBox)row.Cells[3].Controls[0];

            obj.Id = id1;
            obj.Kendravihitham = textname.Text;
            obj.Masavari = textlname.Text;
            obj.UpdateFam();
            GridView1.EditIndex = -1;

            Bind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
