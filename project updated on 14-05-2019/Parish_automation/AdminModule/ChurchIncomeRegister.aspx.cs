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
    public partial class ChurchIncomeRegister : System.Web.UI.Page
    {
        Associationmemberclass incom = new Associationmemberclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtdate.Text = Convert.ToString(DateTime.Now);
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
            if(dt.Rows.Count > 0)
            {
                ddlaccountdescription.DataSource = dt;
                ddlaccountdescription.DataBind();
                ddlaccountdescription.Items.Insert(0, "--Select--");
            }
        }

        protected void ddlfamilyid_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();

            incom.Familyid = ddlfamilyid.SelectedValue;

            dt1 = incom.SelectFamilyMembers2();
            if (dt1.Rows.Count > 0)
            {
                ddlfamilymembers.DataSource = dt1;
                ddlfamilymembers.DataBind();
                ddlfamilymembers.Items.Insert(0, "--Select--");

            }
        }
       

        protected void ddlfamilymembers_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();
            incom.Memberid = Convert.ToString(ddlfamilymembers.SelectedValue);
            dt1 = incom.SelectFamilyMemberDetails();
            if (dt1.Rows.Count > 0)
            {
                txtmobno.Text = Convert.ToString(dt1.Rows[0][2]);
                txtaddress.Text = Convert.ToString(dt1.Rows[0][3]);
                txtward.Text = Convert.ToString(dt1.Rows[0][4]);


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime test = Convert.ToDateTime(txtdate.Text.ToString());
            test = Convert.ToDateTime(test.ToShortDateString().ToString());
            incom.Currentdate =test.ToString();
            incom.Familyidd = ddlfamilyid.Text;
            incom.Name = ddlfamilymembers.Text;
            incom.Address = txtaddress.Text;
            incom.Mobno = txtmobno.Text;
            incom.Ward = txtward.Text;
            incom.Account_description = ddlaccountdescription.Text;
            incom.Amount =Convert.ToDouble(txtamount.Text.ToString());
            incom.InsertMember_Parameters();

             txtdate.Text="";
             ddlfamilyid.SelectedIndex=0;
             ddlfamilymembers.SelectedIndex = 0;
            txtaddress.Text="";
             txtmobno.Text="";
            txtward.Text="";
             ddlaccountdescription.SelectedIndex=0;
            txtamount.Text="";
        }
    }
}