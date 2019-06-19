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
    
    public partial class userviewcertificate : System.Web.UI.Page
    {
        viewCertificate obj = new viewCertificate();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Id1 = Session["user"].ToString();
                BindFamily();


            }

        }

       
        private void BindFamily()
        {

            DataTable dtCheck = new DataTable();
            dtCheck = obj.DispalyCertificate();
            if (dtCheck.Rows.Count > 0)
            {
                GridView2.DataSource = dtCheck;
                GridView2.DataBind();
            }
            
        }
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            var closeLink = (Control)sender;
            GridViewRow row = (GridViewRow)closeLink.NamingContainer;
            string firstCellText = row.Cells[0].Text; // here we are
            Session["id"] = firstCellText;
            obj.Updatebutton = Session["id"].ToString();
            // obj.Id= Session["id"].ToString();
            // Label1.Text = firstCellText.ToString();

            string nextCellText = row.Cells[5].Text;
            obj.Updatebutton1 = nextCellText;

            string nextCellText1 = row.Cells[1].Text;
            Session["member_id"] = nextCellText1;
            obj.Updatebutton2 = Session["member_id"].ToString();


            if (nextCellText.ToString() == "Baptisam")
            {
                Response.Redirect("~/AdminModule/CertificateGeneration.aspx");
            }
            else if (nextCellText.ToString() == "Marriage")
            {
                Response.Redirect("~/AdminModule/MarriageCertificate.aspx");
            }
            else if (nextCellText.ToString() == "Death")
            {
                Response.Redirect("~/AdminModule/DeathCertificate.aspx");
            }
            else if (nextCellText.ToString() == "community")
            {
                Response.Redirect("~/AdminModule/communitycertificate.aspx");
            }


        }
    }
}