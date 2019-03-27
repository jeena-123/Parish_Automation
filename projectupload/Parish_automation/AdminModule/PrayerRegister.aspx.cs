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
            DataTable dt1 = new DataTable();
            dt1 = pryer.ExecuteSelect1();
            if (dt1.Rows.Count > 0)
            {
                ddlfamilyid.DataSource = dt1;
                ddlfamilyid.DataTextField = "family_id";
                ddlfamilyid.DataValueField = "family_id";
                ddlfamilyid.DataBind();
            }
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



        }

        protected void ddlprayergrp_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlfamilyid_SelectedIndexChanged(object sender, EventArgs e)
        {

            //pryer.UnameT = usrname;
           // DataTable qrt = new DataTable();
           // qrt = pryer.ExecuteSelectQueries();
           // if (qrt.Rows.Count > 0)
            //{
              //  txtname.Text = qrt.Rows[0]["family_head_name"].ToString();
              //  txtaddress.Text = qrt.Rows[0]["housename"].ToString();
               // lbowneraddress1.Text = qrt.Rows[0]["address"].ToString();

//}
        }
    }
}