using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation.classes;
using System.Data;

namespace Parish_automation
{
    public partial class Bookhall : System.Web.UI.Page
    {
        Registerbooking obj = new Registerbooking();
        public double audi_amount;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Id = Session["user"].ToString();
                obj.ExecuteSelect();

                DataTable dt1 = new DataTable();
                dt1 = obj.ExecuteSelect();
                if (dt1.Rows.Count > 0)
                {
                    familyid.Text = Convert.ToString(dt1.Rows[0][0]);
                    txtname.Text = Convert.ToString(dt1.Rows[0][1]);
                    txtaddress.Text = Convert.ToString(dt1.Rows[0][2]);
                    txtmob.Text = Convert.ToString(dt1.Rows[0][3]);


                }
            }
        }
    

    

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Name1 = txtname.Text;
           // obj.Id = familyid.Text;
            obj.Address = txtaddress.Text;
            obj.Mobno = txtmob.Text;
            obj.Email = txtemail.Text;
            obj.Audiname = ddlaudiname.Text.ToString();
            obj.Eventtype = ddleventtype.Text.ToString();
            obj.Eventdate = txtdate.Text;
            obj.Eventdays = ddlnoofdays.Text.ToString();
            obj.Amount = txtamount.Text;
            obj.InsertParameter();

        }

        protected void ddlnoofdays_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (ddlaudiname.SelectedItem.ToString() == "Sehion Center")
            {
                audi_amount = 1000;
            }
            else if (ddlaudiname.SelectedItem.ToString() == "Sehion parish")
            {
                audi_amount = 800;
            }
            else if (ddlaudiname.SelectedItem.ToString() == "Both")
            {
                audi_amount = 1800;
            }

            if (ddlnoofdays.SelectedItem.ToString() == "Full Day")
            {
                txtamount.Text = Convert.ToString(audi_amount);
            }
            else if (ddlnoofdays.SelectedItem.ToString() == "Forenoon" || ddlnoofdays.SelectedItem.ToString() == "Afternoon")
            {
                double amt = audi_amount / 2;
                txtamount.Text = Convert.ToString(amt);
            }
            else if (ddlnoofdays.SelectedItem.ToString() == "2Days")
            {
                double amt = audi_amount * 2;
                txtamount.Text = Convert.ToString(amt);
            }
        }
    }
}