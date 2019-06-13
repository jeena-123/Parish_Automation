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
    public partial class PrayerRegister : System.Web.UI.Page
    {
        PrayerRegisterClass pryer = new PrayerRegisterClass();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindFamily();
                BindPrayerGroup();
            }

           
           
        }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pryer.Prayer_grp = ddlprayergrp.Text;
            pryer.Familyidd = ddlfamilyid.Text;
            pryer.Headname = txtname.Text;
            pryer.Address1 = txtaddress.Text;
            pryer.Prayertype = ddlprayertype.Text;
            pryer.Prayertyme = ddlprayertime.Text;
            pryer.Prayerdate = txtdate.Text;
            pryer.InsertMember_Parameter();

             ddlprayergrp.SelectedIndex=0;
             ddlfamilyid.SelectedIndex=0;
             txtname.Text="";
             txtaddress.Text="";
             ddlprayertype.SelectedIndex=0;
             ddlprayertime.SelectedIndex=0;
             txtdate.Text="";



        }
        private void BindPrayerGroup ()
        {
            DataTable dt2 = new DataTable();
            dt2 = pryer.ExecuteSelectQuery();
            if (dt2.Rows.Count > 0)
            {
                ddlprayergrp.DataSource = dt2;
                ddlprayergrp.DataTextField = "prayername";
                ddlprayergrp.DataValueField = "prayername";
                ddlprayergrp.DataBind();
            }

        }
        private void BindFamily()
        {
            DataTable dt1 = new DataTable();
            dt1 = pryer.ExecuteSelect1();
            if (dt1.Rows.Count > 0)
            {
                ddlfamilyid.DataSource = dt1;
                ddlfamilyid.DataTextField = "family_id";
                ddlfamilyid.DataValueField = "family_id";
                ddlfamilyid.DataBind();
                ddlfamilyid.Items.Insert(0, "--Select--");
            }

        }

        protected void ddlprayergrp_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlfamilyid_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();
            pryer.Familyidd = ddlfamilyid.SelectedValue;
            dt1 = pryer.SelectFamilyMemberDetails();
            if (dt1.Rows.Count > 0)
            {
                txtaddress.Text = Convert.ToString(dt1.Rows[0][0]);
                 txtname.Text = Convert.ToString(dt1.Rows[0][1]);
            }



        }

        protected void ddlprayertime_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlname_SelectedIndexChanged(object sender, EventArgs e)
        {

          /*  DataTable dt1 = new DataTable();
            pryer.Memberid = Convert.ToString(ddlname.SelectedValue);
            dt1 = pryer.SelectFamilyMemberDetails();
            if (dt1.Rows.Count > 0)
            {



                txtaddress.Text = Convert.ToString(dt1.Rows[0][2]);
               // txtmembage.Text = Convert.ToString(dt1.Rows[0][2]);

            }*/
        }
    }
}