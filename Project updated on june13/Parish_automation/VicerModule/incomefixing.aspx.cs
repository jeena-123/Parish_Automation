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
    public partial class incomefixing : System.Web.UI.Page
    {
        Associationmemberclass incom = new Associationmemberclass();
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
            dt1 = incom.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                ddlfamilyid.DataSource = dt1;
                ddlfamilyid.DataBind();
                ddlfamilyid.Items.Insert(0, "--Select--");

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            incom.Familyyidd = ddlfamilyid.SelectedValue;
            DataTable dt = new DataTable();
            dt = incom.SelectFamilieAddress();
            if (dt.Rows.Count > 0)
            {
                txtaddress.Text= Convert.ToString(dt.Rows[0][0]);
            }

            DataTable dt1 = new DataTable();
            dt1 = incom.SelectFamilies();
            if (dt1.Rows.Count > 0)
            {
                GridView1.DataSource = dt1;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            incom.Familyyidd = ddlfamilyid.SelectedValue;
            incom.Kendravihitham = txtkendravihitham.Text;
            incom.Masavri = txtmasavari.Text;
            incom.InsertIncome();
           ddlfamilyid.SelectedIndex=0;
            txtkendravihitham.Text="";
           txtmasavari.Text="";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            incom.Familyidd = ddlfamilyid.SelectedValue;
            incom.Kendravihitham = txtkendravihitham.Text;
            incom.Masavri = txtmasavari.Text;
            incom.UpdateIncome();
            ddlfamilyid.SelectedIndex = 0;
            txtkendravihitham.Text = "";
            txtmasavari.Text = "";


        }
    }
}