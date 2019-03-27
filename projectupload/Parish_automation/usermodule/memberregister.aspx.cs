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

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //obj.Member_id = memberid.Text;
            obj.Name = txtname.Text;
            obj.Relation_family_head = ddlrelation.Text;
            obj.Date_of_birth = txtmemdob.Text;
            obj.Mobno1 = txtmobno.Text;
            obj.Gender = chkgender.Text;
            obj.Date_of_baptisam = txtbaptisamdate.Text;
            obj.Email_id = txtemail.Text;
            obj.Blood_group = ddlbloodgrp.Text;
            obj.Family_income = txtfamilyincome.Text;
            obj.Marital_status = ddlmaritalstatus.Text;
            obj.Date_of_marriage = txtmarriagedate.Text;
            obj.Qualification = txtqualification.Text;
            obj.Occupation = txtoccupation.Text;
            obj.Id = family.Text;
            obj.InsertMember_Parameter();

        }
    }
}