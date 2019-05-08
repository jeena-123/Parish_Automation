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
    public partial class ViewAssociationMembers : System.Web.UI.Page
    {
        death obj = new death();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Selectdata = ddlselect.Text;
            obj.Date_from = txtfrom.Text;
            obj.Date_to = txtto.Text;
            // reg.DisplyDetails();
            DataTable dtReg = new DataTable();
            dtReg = obj.DisplyDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg;
                GridView1.DataBind();
            }

        }
    }
}