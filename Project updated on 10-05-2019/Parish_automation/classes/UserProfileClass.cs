using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Parish_automation.classes
{
    public class UserProfileClass
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
        private string id;
        private string namehead;
        private string fami;
        private string mobilenumb;
        private string prayergroup;
        private String fid;
        private string familyid;
      



        public string Id { get => id; set => id = value; }
        public string Namehead { get => namehead; set => namehead = value; }
        // public string Familyname1 { get => familyname1; set => familyname1 = value; }
        public string Mobilenumb { get => mobilenumb; set => mobilenumb = value; }
        public string Prayergroup { get => prayergroup; set => prayergroup = value; }
        public string Fid { get => fid; set => fid = value; }
        public string Fami { get => fami; set => fami = value; }
        public string Familyid { get => familyid; set => familyid = value; }

        public DataTable ExecuteSelect()
        {
            OpenConection();
            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select family_head_name,housename,resphoneno,prayergroup from Family_Register where family_id=@username", con);
            cmd2.Parameters.AddWithValue("@username", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable Execute_ViewData()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand command = new SqlCommand("select name,relationwithfamilyhead,gender,dob,mobno,email_id,marital_status,qualification,occupation from family_information1 where familyid=@username", con);
            command.Parameters.AddWithValue("@username", id);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;
        }
        public DataTable DispalyDetails()
        {
            OpenConection();
            DataTable dtReg1 = new DataTable();
            SqlCommand cmd6 = new SqlCommand("select date,familyid,Name,Address,mobno,ward,accountDescription,amount from ChurchIncomeRegister where familyid =@username", con);
            cmd6.Parameters.AddWithValue("@username", Familyid);
            SqlDataAdapter da = new SqlDataAdapter(cmd6);
            da.Fill(dtReg1);
            CloseConnection();
            return dtReg1;


        }

    }
}