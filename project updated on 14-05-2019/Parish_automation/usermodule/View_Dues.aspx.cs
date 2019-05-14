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
            obj.Fyid = Session["user"].ToString();
            string k = obj.kPaidAmount().ToString();
            string m = obj.mPaidAmount().ToString();
            TimeSpan diff = obj.Cdate.Subtract(obj.Sdate);
            
        }
    }
}