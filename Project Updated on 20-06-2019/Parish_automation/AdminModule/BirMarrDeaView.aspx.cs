using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation.classes;
using System.Data;
using System.Data.SqlClient;

namespace Parish_automation.AdminModule
{
    public partial class BirMarrDeaView : System.Web.UI.Page
    {
        register reg = new register();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void viewDetails_Click(object sender, EventArgs e)
        {

            reg.Type = ddlselect.SelectedValue;

            reg.Date_from = Convert.ToDateTime(txtFromDay.Text); //"____-" + monthDrop.SelectedValue + "-" + fromdayDrop.SelectedValue;
            reg.Date_to = Convert.ToDateTime(txtToDate.Text); //"____-" + monthDrop.SelectedValue + "-" + todayDrop.SelectedValue;

            var m1 = reg.Date_from.Month;
            
            var d1 = reg.Date_from.Day;
            
            var m2 = reg.Date_to.Month;
           
            var d2 = reg.Date_to.Day;
            

            string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            //SqlDataAdapter sda = new SqlDataAdapter("select fi.familyid,fi.name,fr.housename,fi.dob from family_information1 fi inner join Family_Register fr on fi.familyid=fr.family_id where dob like '%_"+m1+"-_"+d1+ "%' or dob like '%_"+m2+"-_"+d2+"%'", con);//'%_"+m1+"-_"+d1+ "%'
            if (reg.Type == "1")
            {
                //SqlDataAdapter sda = new SqlDataAdapter("select fi.familyid,fi.name,fr.housename,fi.dob from family_information1 fi inner join Family_Register fr on fi.familyid = fr.family_id where SUBSTRING(convert(varchar, dob),6,5) >= (select SUBSTRING(convert(varchar, dob), 6, 5) from family_information1 where dob like '%"+m11+"-"+d11+"%') and SUBSTRING(convert(varchar, dob),6,5) <= (select SUBSTRING(convert(varchar, dob), 6, 5) from family_information1 where dob like '%"+m22+"-"+d22+"%')", con);
                SqlDataAdapter sda = new SqlDataAdapter("select fi.familyid,fi.name,fr.housename,fi.dob from family_information1 fi inner join Family_Register fr on fi.familyid = fr.family_id where convert(int, format(dob,'MM')) between "+m1+" and "+m2+" and convert(int, format(dob,'dd')) between "+d1+" and "+d2+"", con);

                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
            if (reg.Type == "2")
            {
                //SqlDataAdapter sda = new SqlDataAdapter("select fi.familyid,fi.name,fr.housename,fi.dateofbaptisam from family_information1 fi inner join Family_Register fr on fi.familyid = fr.family_id where SUBSTRING(convert(varchar, dateofbaptisam),6,5) >= (select SUBSTRING(convert(varchar, dateofbaptisam), 6, 5) from family_information1 where dateofbaptisam like '%" + m11+"-"+d11+"%') and SUBSTRING(convert(varchar, dateofbaptisam),6,5) <= (select SUBSTRING(convert(varchar, dateofbaptisam), 6, 5) from family_information1 where dateofbaptisam like '%"+m22+"-"+d22+"%')", con);
                SqlDataAdapter sda = new SqlDataAdapter("select fi.familyid,fi.name,fr.housename,fi.dateofbaptisam from family_information1 fi inner join Family_Register fr on fi.familyid = fr.family_id where convert(int, format(dateofbaptisam,'MM')) between " + m1 + " and " + m2 + " and convert(int, format(dateofbaptisam,'dd')) between " + d1 + " and " + d2 + "", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
            if (reg.Type == "3")
            {
                //SqlDataAdapter sda = new SqlDataAdapter("select fi.familyid,fi.name,fr.housename,fi.marriage_date from family_information1 fi inner join Family_Register fr on fi.familyid = fr.family_id where SUBSTRING(convert(varchar, marriage_date),6,5) >= (select SUBSTRING(convert(varchar, marriage_date), 6, 5) from family_information1 where marriage_date like '%" + m11 + "-" + d11 + "%') and SUBSTRING(convert(varchar, marriage_date),6,5) <= (select SUBSTRING(convert(varchar, marriage_date), 6, 5) from family_information1 where marriage_date like '%" + m22 + "-" + d22 + "%')", con);
                SqlDataAdapter sda = new SqlDataAdapter("select fi.familyid,fi.name,fr.housename,fi.marriage_date from family_information1 fi inner join Family_Register fr on fi.familyid = fr.family_id where convert(int, format(marriage_date,'MM')) between " + m1 + " and " + m2 + " and convert(int, format(marriage_date,'dd')) between " + d1 + " and " + d2 + "", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
            if (reg.Type == "4")
            {
                //SqlDataAdapter sda = new SqlDataAdapter("select fi.familyid,fi.name,fr.housename,fi.date_of_death from family_information1 fi inner join Family_Register fr on fi.familyid = fr.family_id where SUBSTRING(convert(varchar, date_of_death),6,5) >= (select SUBSTRING(convert(varchar, date_of_death), 6, 5) from family_information1 where date_of_death like '%" + m11 + "-" + d11 + "%') and SUBSTRING(convert(varchar, date_of_death),6,5) <= (select SUBSTRING(convert(varchar, date_of_death), 6, 5) from family_information1 where date_of_death like '%" + m22 + "-" + d22 + "%')", con);
                SqlDataAdapter sda = new SqlDataAdapter("select fi.familyid,fi.name,fr.housename,fi.date_of_death from family_information1 fi inner join Family_Register fr on fi.familyid = fr.family_id where convert(int, format(convert(date,date_of_death),'MM')) between " + m1 + " and " + m2 + " and convert(int, format(convert(date,date_of_death),'dd')) between " + d1 + " and " + d2 + "", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }



            // reg.DisplyDetails();
            //DataTable dtReg = new DataTable();
            //dtReg = reg.DisplyDetails();
            //if (dtReg.Rows.Count > 0)
            //{
            //    GridView2.DataSource = dtReg;
            //    GridView2.DataBind();
            //}


        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}