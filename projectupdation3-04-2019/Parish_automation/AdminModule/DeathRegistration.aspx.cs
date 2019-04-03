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
    public partial class DeathRegistration : System.Web.UI.Page
    {
        death obj = new death();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                DropDownList1.DataSource = dt1;
                DropDownList1.DataTextField = "family_id";
                DropDownList1.DataValueField = "family_id";
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Familyid = DropDownList1.Text;
            obj.Name = txtmembname.Text;
            obj.Address = txtmembaddress.Text;
            // obj.Age = Convert.ToInt32(txtmembage.Text);
            obj.Dodeath = txtdod.Text;
            obj.Dofuneral = txtdof.Text;
            obj.Priestname = txtpriest.Text;
            obj.Deathreason = txtdeathreason.Text;
            obj.InsertMember_Parameter();

        }
    }
}