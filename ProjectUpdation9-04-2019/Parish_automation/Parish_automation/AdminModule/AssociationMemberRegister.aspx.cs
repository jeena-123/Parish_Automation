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
    public partial class AssociationMemberRegister : System.Web.UI.Page
    {
         Associationmemberclass asso = new Associationmemberclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindFamily();
            }

        }
        private void BindFamily()
        {
            DataTable dt1 = new DataTable();
            dt1 = asso.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                ddlfamilyid.DataSource = dt1;
                ddlfamilyid.DataBind();
                // groomaddress.Text = Convert.ToString(dt1.Rows[0][0]);
                ddlfamilyid.Items.Insert(0, "--Select--");

            }
        }

        protected void ddlfamilyid_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();

            asso.Familyid = ddlfamilyid.SelectedValue;

            dt1 = asso.SelectFamilyMembers();
            if (dt1.Rows.Count > 0)
            {
               ddlfamilyembername.DataSource = dt1;
                ddlfamilyembername.DataBind();
                ddlfamilyembername.Items.Insert(0, "--Select--");
                
            }
        }

        protected void ddlfamilyembername_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();
            asso.Memberid = Convert.ToString(ddlfamilyembername.SelectedValue);
            dt1 = asso.SelectFamilyMemberDetails();
            if (dt1.Rows.Count > 0)
            {



                txtaddress.Text = Convert.ToString(dt1.Rows[0][3]);
                txtmobno.Text = Convert.ToString(dt1.Rows[0][2]);
                
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
            asso.Familyid = ddlfamilyid.Text;
            asso.Assmembname = ddlfamilyembername.Text;
            asso.Assomembaddress = txtaddress.Text;
            asso.Assomembmobno = txtmobno.Text;
            asso.Associationname = ddlassociation.Text;
            asso.Associationposition = ddlposition.Text;
            asso.Yearfrom = txtyearfrom.Text;
            asso.Yearto = txtyearto.Text;
            asso.InsertMember_Parameter();
        }
    }
}