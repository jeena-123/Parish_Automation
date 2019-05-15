using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Parish_automation.classes;

namespace Parish_automation.usermodule
{
    public partial class View_Dues : System.Web.UI.Page
    {
        UserProfileClass obj = new UserProfileClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Fyid = Session["user"].ToString();
            DataTable dtkpaid = new DataTable();
            dtkpaid = obj.kPaidAmount();
            if(dtkpaid.Rows.Count>0)
            {
                obj.Kpaid = Convert.ToDouble(dtkpaid.Rows[0]["pamount"].ToString());
            }
            DataTable dtmpaid = new DataTable();
            dtmpaid = obj.mPaidAmount();
            if (dtmpaid.Rows.Count > 0)
            {
                obj.Mpaid = Convert.ToDouble(dtmpaid.Rows[0]["mamount"].ToString());
            }
            
            DataTable dtfixed = new DataTable();
            dtfixed = obj.FetchFixedAmount();
            if(dtfixed.Rows.Count>0)
            {
                obj.Sdate =Convert.ToDateTime(dtfixed.Rows[0]["Date"].ToString());
                obj.Kfixedamount = dtfixed.Rows[0]["kendravihitham"].ToString();
                obj.Mfixedamount = dtfixed.Rows[0]["Masavari"].ToString();
            }
            
            obj.Cdate = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());
            obj.Date = Convert.ToDateTime(obj.Sdate.ToShortDateString());
            Label1.Text = (obj.Cdate.Date - obj.Date.Date).TotalDays.ToString();
            int mon = (Convert.ToInt32(Label1.Text) / 30);
            double kamt = mon *Convert.ToDouble(obj.Kfixedamount);
            double mamt = mon * Convert.ToDouble(obj.Mfixedamount);
            LblKdue.Text = (kamt - Convert.ToDouble(obj.Kpaid)).ToString();
            LblmDue.Text =(mamt-Convert.ToDouble(obj.Mpaid)).ToString();
        }
    }
}