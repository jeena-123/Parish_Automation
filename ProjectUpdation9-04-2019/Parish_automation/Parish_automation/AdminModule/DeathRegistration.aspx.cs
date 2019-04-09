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
            if (!IsPostBack)
            {
                BindFamily();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Familyid = DropDownList1.Text;
            obj.Name = ddlnamedeath.Text;
            //obj.Address = txtmembaddress.Text;
            // obj.Age = Convert.ToInt32(txtmembage.Text);
            obj.Dodeath = txtdod.Text;
            obj.Dofuneral = txtdof.Text;
            //obj.Priestname = txtpriest.Text;
            obj.Deathreason = txtdeathreason.Text;
            
            obj.InsertMember_Parameter();

        }
        private void BindFamily()
        {
            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                DropDownList1.DataSource = dt1;
                DropDownList1.DataTextField = "family_id";
                DropDownList1.DataValueField = "family_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--Select--");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();
            obj.Familyid = DropDownList1.SelectedValue;
            dt1 = obj.SelectFamilyMembers();
            if (dt1.Rows.Count > 0)
            {
                ddlnamedeath.DataSource = dt1;
                ddlnamedeath.DataBind();
                ddlnamedeath.Items.Insert(0, "--Select--");
            }
        }

        protected void ddlnamedeath_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();
            obj.Memberid = Convert.ToString(ddlnamedeath.SelectedValue);
            dt1 = obj.SelectFamilyMemberDetails();
            if (dt1.Rows.Count > 0)
            {



                txtmembaddress.Text = Convert.ToString(dt1.Rows[0][3]);
                txtmembage.Text = Convert.ToString(dt1.Rows[0][2]);

            }
        }
    }
 }
