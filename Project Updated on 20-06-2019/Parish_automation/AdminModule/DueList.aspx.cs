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
    public partial class DueList : System.Web.UI.Page
    {
        UserProfileClass obj = new UserProfileClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindFamily();
            }
        }

        protected void ddlfamilyid_SelectedIndexChanged(object sender, EventArgs e)
        {
            obj.Dueid = ddlfamilyid.SelectedValue;
            DataTable dtkpaid = new DataTable();
            dtkpaid = obj.kPaidAmount1();
            if (dtkpaid.Rows.Count > 0)
            {
                if (dtkpaid.Rows[0]["pamount"].ToString() == "0")
                {
                    obj.Kpaid = Convert.ToDouble(dtkpaid.Rows[0]["pamount"].ToString());
                }
                else
                {
                    obj.Kpaid = 0;
                }
            }

            DataTable dtmpaid = new DataTable();
            dtmpaid = obj.mPaidAmount1();
            if (dtmpaid.Rows.Count > 0)
            {
                if (dtkpaid.Rows[0]["pamount"].ToString() == "0")
                {
                    obj.Mpaid = Convert.ToDouble(dtmpaid.Rows[0]["mamount"].ToString());
                }
                else
                {
                    obj.Mpaid = 0;
                }
            }


            DataTable dtfixed = new DataTable();
            dtfixed = obj.FetchFixedAmount1();
            if (dtfixed.Rows.Count > 0)
            {
                obj.Sdate = Convert.ToDateTime(dtfixed.Rows[0]["Date"].ToString());
                obj.Kfixedamount = dtfixed.Rows[0]["kendravihitham"].ToString();
                obj.Mfixedamount = dtfixed.Rows[0]["Masavari"].ToString();
            }

            obj.Cdate = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());
            obj.Date = Convert.ToDateTime(obj.Sdate.ToShortDateString());
            Label1.Text = (obj.Cdate.Date - obj.Date.Date).TotalDays.ToString();
            int mon = (Convert.ToInt32(Label1.Text) / 30);
            double kamt = mon * Convert.ToDouble(obj.Kfixedamount);
            double mamt = mon * Convert.ToDouble(obj.Mfixedamount);
            LblKdue.Text = (kamt - Convert.ToDouble(obj.Kpaid)).ToString();
            LblmDue.Text = (mamt - Convert.ToDouble(obj.Mpaid)).ToString();
        }
    
        private void BindFamily()
        {
            DataTable dt1 = new DataTable();
            dt1 = obj.ExecuteSelectfamily();
            if (dt1.Rows.Count > 0)
            {
                ddlfamilyid.DataSource = dt1;
                ddlfamilyid.DataBind();
                // groomaddress.Text = Convert.ToString(dt1.Rows[0][0]);
                ddlfamilyid.Items.Insert(0, "--Select--");

            }
        }
    }
}