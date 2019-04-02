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
    public partial class BaptisamRegistration : System.Web.UI.Page
    {
        Class1 obj20 = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            
                DataTable dt1 = new DataTable();
                dt1 = obj20.ExecuteSelect();
                if (dt1.Rows.Count > 0)
                {
                    ddlist.DataSource = dt1;
                    ddlist.DataTextField = "family_id";
                    ddlist.DataValueField = "family_id";
                    ddlist.DataBind();
                }

            }

            protected void txtgroomname_TextChanged(object sender, EventArgs e)
            {
            }

            protected void Button1_Click1(object sender, EventArgs e)
            {
                obj20.Baptisedperson = txtbaptisedname.Text;
                obj20.Fathername = txtfathername.Text;
                obj20.Mothername = txtmothername.Text;
                obj20.Address = txtaddresss.Text;
                obj20.Dateofbaptisam = txtbaptisamdate.Text;
                obj20.Ward = txtward.Text;
                obj20.Village = txtvillage.Text;
                obj20.District = txtdistrict.Text;
                obj20.Vicer = txtvicer.Text;
                obj20.Family_id = ddlist.Text;
                obj20.Parish_name = txtparishname.Text;
                obj20.Baptisedname = txtbaptisamname.Text;
                obj20.Gender = rdbtn.Text;
                obj20.Baptiseddate = txtbaptisamdate.Text;
                obj20.InsertMember_Parameter();
            }
        }
    }


    
