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
    public partial class paidList : System.Web.UI.Page
    {
        UserProfileClass incom = new UserProfileClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["user"].ToString();
            incom.Familyid= Session["user"].ToString();
            DataTable dtReg1 = new DataTable();
            dtReg1 = incom.DispalyDetails();
            if (dtReg1.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg1;
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}