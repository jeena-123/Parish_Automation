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
    public partial class CertificateRequest : System.Web.UI.Page
    {
        Associationmemberclass obj = new Associationmemberclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Id = Session["user"].ToString();
                obj.DisplayData();

                DataTable dt1 = new DataTable();
                dt1 = obj.ExecuteSelect();
                if (dt1.Rows.Count > 0)
                {
                    familyid.Text = Convert.ToString(dt1.Rows[0][0]);
                }
                BindFamily();
                deadname.Visible = false;
                Label9.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Id = familyid.Text;
            obj.Membername = ddlname.Text;
            obj.Memberaddress = address.Text;
            obj.Membermob = mob.Text;
            obj.Date = date.Text;
            obj.Certificatetype = ddlcertificate.Text;
            obj.Purpose = txtpurpose.Text;
            obj.InsertMember_ParameterValues();

        }
        private void BindFamily()
        {
            DataTable dt1 = new DataTable();
            dt1 = obj.SelectFamilyMembers1();
            if (dt1.Rows.Count > 0)
            {
                ddlname.DataSource = dt1;
                ddlname.DataBind();
                ddlname.Items.Insert(0, "--Select--");
            }
        }

        

        protected void ddlname_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();
            obj.Memberid = Convert.ToString(ddlname.SelectedValue);
            dt1 = obj.SelectFamilyMemberDetails();
            if (dt1.Rows.Count > 0)
            {
                mob.Text = Convert.ToString(dt1.Rows[0][2]);
                address.Text = Convert.ToString(dt1.Rows[0][3]);
                date.Text = Convert.ToString(DateTime.Now);



            }
            
        }

        protected void ddlcertificate_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlcertificate.ToString() == "Death")
            {
                deadname.Visible = true;
                Label9.Visible = true;

            }
        }
    }
}