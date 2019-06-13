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
    public partial class AmountPaidList : System.Web.UI.Page
    {
        Associationmemberclass incom = new Associationmemberclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                BindFamily();
                BindAccountDetails();


            }
        }
        private void BindFamily()
        {
            DataTable dt1 = new DataTable();
            dt1 = incom.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                ddlfamilyid.DataSource = dt1;
                ddlfamilyid.DataBind();
                ddlfamilyid.Items.Insert(0, "--Select--");

            }
        }
        private void BindAccountDetails()
        {
            DataTable dt = new DataTable();
            dt = incom.ExecuteAccountDetails();
            if (dt.Rows.Count > 0)
            {
                ddlaccountdescription.DataSource = dt;
                ddlaccountdescription.DataBind();
                ddlaccountdescription.Items.Insert(0, "--Select--");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           /* DataTable dt1 = new DataTable();

            incom.Familyid = ddlfamilyid.SelectedValue;

            dt1 = incom.SelectFamilyMembers1();
            if (dt1.Rows.Count > 0)
            {
                ddlfamilymembers.DataSource = dt1;
                ddlfamilymembers.DataBind();
                ddlfamilymembers.Items.Insert(0, "--Select--");

            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            incom.Family = ddlfamilyid.Text;
            //incom.Familymembers = ddlfamilymembers.Text;
            incom.Accountdes = ddlaccountdescription.Text;
            DataTable dtReg = new DataTable();
            dtReg = incom.DispalyDetails();
            if (dtReg.Rows.Count > 0)
            {
                GridView1.DataSource = dtReg;
                GridView1.DataBind();
            }
        }
    }
}