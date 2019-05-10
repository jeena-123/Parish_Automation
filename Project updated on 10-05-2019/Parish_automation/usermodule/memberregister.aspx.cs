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
    public partial class memberregister1 : System.Web.UI.Page
    {
        MemberInfoClass obj = new MemberInfoClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               obj.GenerateAutoID();
               memberid.Text = obj.Member_id;
               obj.Id = Session["user"].ToString();
               obj.ExecuteSelect();

                    DataTable dt1 = new DataTable();
                    dt1 = obj.ExecuteSelect();
                        if (dt1.Rows.Count > 0)
                        {
                             familyid.Text = Convert.ToString(dt1.Rows[0][0]);
                        }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            obj.Member_id = memberid.Text;
            obj.Name = txtname.Text;
            obj.Relation_family_head = ddlrelation.Text;
            obj.Date_of_birth = txtmemdob.Text;
            obj.Mobno1 = txtmobno.Text;
            obj.Gender = chkgender.Text;
            obj.Date_of_baptisam = txtbaptisamdate.Text;
            obj.Email_id = txtemail.Text;
            obj.Blood_group = ddlbloodgrp.Text;
           // obj.Family_income = txtfamilyincome.Text;
            obj.Marital_status = ddlmaritalstatus.Text;
            obj.Date_of_marriage = txtmarriagedate.Text;
            obj.Qualification = txtqualification.Text;
            obj.Occupation = txtoccupation.Text;
            obj.Id = familyid.Text;
            obj.InsertMember_Parameter();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/usermodule/memberregister.aspx");

        }
    }
}