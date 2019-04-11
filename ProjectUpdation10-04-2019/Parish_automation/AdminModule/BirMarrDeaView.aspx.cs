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
    public partial class BirMarrDeaView : System.Web.UI.Page
    {
        register reg = new register();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void viewDetails_Click(object sender, EventArgs e)
        {
            reg.Date_from = txtfrom.Text;
            reg.Date_to = txtto.Text;
           // reg.DisplyDetails();
            DataTable dtReg = new DataTable();
            dtReg = reg.DisplyDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView2.DataSource = dtReg;
                GridView2.DataBind();
            }

        }
    }
}