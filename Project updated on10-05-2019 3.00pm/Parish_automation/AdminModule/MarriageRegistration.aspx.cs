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
    public partial class MarriageRegistration : System.Web.UI.Page
    {
        register obj = new register();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindFamily();
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Familyidentity = ddlist1.SelectedValue;
            obj.Parishname = txtparishname.Text;
            obj.Groomname = ddlist2name.Text;
            obj.Address = groomaddress.Text;
            obj.Groomfathername = groomfathername.Text;
            obj.Groommothername = groommothername.Text;
            obj.Groomage = groomage.Text;
            obj.Groomdob = groomdob.Text;
            obj.Groomoccupation = groomoccupation.Text;
            obj.Withness1 = txtwithness.Text;
            obj.Bridename = txtbridename.Text;
            obj.Brideaddress = brideaddress.Text;
            obj.Bridemothername = bridemothername.Text;
            obj.Bridefathername = bridefathername.Text;
            obj.Brideage = brideage.Text;
            obj.Bridedob = bridedob.Text;
            obj.Brideoccupation = brideoccupation.Text;
            obj.Withness2 = withness2.Text;
            obj.Dom = datemarriage.Text;
            obj.Priestname = priestname.Text;
            obj.InsertMember_Parameter();

             ddlist1.SelectedIndex=0;
             txtparishname.Text="";
             ddlist2name.SelectedIndex=0;
             groomaddress.Text="";
             groomfathername.Text="";
             groommothername.Text="";
             groomage.Text="";
             groomdob.Text="";
             groomoccupation.Text="";
             txtwithness.Text="";
             txtbridename.Text="";
             brideaddress.Text="";
             bridemothername.Text="";
             bridefathername.Text="";
             brideage.Text="";
             bridedob.Text="";
             brideoccupation.Text="";
             withness2.Text="";
             datemarriage.Text="";
             priestname.Text="";

        }

        

        private void BindFamily()
        {
            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelect();
            if (dt1.Rows.Count > 0)
            {
                ddlist1.DataSource = dt1;                
                ddlist1.DataBind();
               // groomaddress.Text = Convert.ToString(dt1.Rows[0][0]);
                ddlist1.Items.Insert(0, "--Select--");
                
            }
        }

        protected void ddlist1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();

            obj.Familyidentity = ddlist1.SelectedValue;
         
            dt1 = obj.SelectFamilyMembers();
            if (dt1.Rows.Count > 0)
            {
                ddlist2name.DataSource = dt1;
                ddlist2name.DataBind();
                ddlist2name.Items.Insert(0, "--Select--");
                groomfathername.DataSource = dt1;
                groomfathername.DataBind();
                groomfathername.Items.Insert(0, "--Select--");
                groommothername.DataSource = dt1;
                groommothername.DataBind();
                groommothername.Items.Insert(0, "--Select--");
            }
        }
        protected void ddlist2name_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();
            obj.Memberid =Convert.ToString ( ddlist2name.SelectedValue);
            dt1 = obj.SelectFamilyMemberDetails();
            if (dt1.Rows.Count > 0)
            {



                groomage.Text = Convert.ToString(dt1.Rows[0][2]);
                 groomdob.Text = Convert.ToString(dt1.Rows[0][3]);
                groomoccupation.Text = Convert.ToString(dt1.Rows[0][4]);
                groomaddress.Text = Convert.ToString(dt1.Rows[0][5]);
            }
        }
    }
}