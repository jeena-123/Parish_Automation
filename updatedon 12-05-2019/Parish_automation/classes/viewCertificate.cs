using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Parish_automation.classes
{
    public class viewCertificate
    {
        string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString;
        SqlConnection con;
        public void OpenConection()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
        }
        public void CloseConnection()
        {
            con.Close();
        }
        public void ExecuteQueries(string Query_)
        {
            // Whenever you want to execute a query, like an insert, update or delete
            //query then simply call this function 
            //using the object of a class and pass your query to the function
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }
        private string familyidy;
        private string updatebutton;
        private string updatebutton1;
        private string updatebutton2;
        private string id;
        private string id1;

        public string Familyidy { get => familyidy; set => familyidy = value; }
        public string Updatebutton { get => updatebutton; set => updatebutton = value; }
        public string Updatebutton1 { get => updatebutton1; set => updatebutton1 = value; }
        public string Updatebutton2 { get => updatebutton2; set => updatebutton2 = value; }
        public string Id { get => id; set => id = value; }
        public string Id1 { get => id1; set => id1 = value; }

        public DataTable Checkcertificatetype()
        {
            OpenConection();

            DataTable dtCheck = new DataTable();
            SqlCommand cmd = new SqlCommand("select orginamname,child_fathername,child_mothername,baptised_date,vicername,parishname,baptised_date from baptisamregister where familyidy=@familyid", con);
            cmd.Parameters.AddWithValue("@familyid", Updatebutton);

            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtCheck);
            CloseConnection();
            return dtCheck;
        }
        public DataTable CheckMarriageCertificate()
        {
            OpenConection();
            DataTable dtmarr = new DataTable();
            SqlCommand cmd1 = new SqlCommand("select bridename,parishname,domarriage,withness,bridewithness,priestname from marriageregister where familyidentity=@familyid", con);
            cmd1.Parameters.AddWithValue("@familyid", updatebutton);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dtmarr);
            CloseConnection();
            return dtmarr;
        }
        public DataTable PrintName()
        {
            OpenConection();
            DataTable dt = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select name from  family_information1 where member_id=@member_id", con);
            cmd2.Parameters.AddWithValue("@member_id", updatebutton2);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt);
            CloseConnection();
            return dt;
        }
        public void UpdateTable1()
        {
            OpenConection();

            SqlCommand cmd = new SqlCommand("update certificate_Request  set is_approved='1' where family_id=@familyid", con);

            cmd.Parameters.AddWithValue("@familyid", updatebutton);

            cmd.ExecuteNonQuery();
        }
        public DataTable DispalyCertificate()
        {
            OpenConection();

            DataTable dtCheck = new DataTable();
            SqlCommand cmd = new SqlCommand("select name,[address],[mobno],[date] ,[certificate_type],[purpose]  from certificate_Request where family_id =@familyid and  is_approved=@family", con);
            cmd.Parameters.AddWithValue("@familyid", id1);
            cmd.Parameters.AddWithValue("@family", '1');

            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtCheck);
            CloseConnection();
            return dtCheck;
        }

    }
}