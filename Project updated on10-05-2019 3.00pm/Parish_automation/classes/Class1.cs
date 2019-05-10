using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Parish_automation.classes
{
    public class Class1
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
        private string registerno;
        private string baptisedperson;
        private string gender;
        private string fathername;
        private string mothername;
        private string address;
        private string dateofbaptisam;
        private string ward;
        private string village;
        private string taluk;
        private string district;
        private string vicer;
        private string family_id;
        private string baptisedname;
        private string parish_name;
        private string baptiseddate;
        


        public string Registerno { get => registerno; set => registerno = value; }
        public string Baptisedperson { get => baptisedperson; set => baptisedperson = value; }
        public string Gender { get => gender; set => gender = value; }
        public string Fathername { get => fathername; set => fathername = value; }
        public string Mothername { get => mothername; set => mothername = value; }
        public string Address { get => address; set => address = value; }
        public string Dateofbaptisam { get => dateofbaptisam; set => dateofbaptisam = value; }
        public string Ward { get => ward; set => ward = value; }
        public string Taluk { get => taluk; set => taluk = value; }
        public string District { get => district; set => district = value; }
        public string Vicer { get => vicer; set => vicer = value; }
        public string Family_id { get => family_id; set => family_id = value; }
        public string Parish_name { get => parish_name; set => parish_name = value; }
        public string Village { get => village; set => village = value; }
        public string Baptisedname { get => baptisedname; set => baptisedname = value; }
        public string Baptiseddate { get => baptiseddate; set => baptiseddate = value; }

        public void InsertMember_Parameter()
        {
            OpenConection();
            string qry = "insert into baptisamregister values(@familyid,@orginalname,@fathername,@mothername,@address,@ward,@village,@district,@baptisamname,@vicername,@parishname,@gender,@baptiseddate);";
            SqlCommand cmd = new SqlCommand(qry, con);
           
            cmd.Parameters.AddWithValue("@familyid", family_id);
            cmd.Parameters.AddWithValue("@orginalname", baptisedperson);
            cmd.Parameters.AddWithValue("@fathername", fathername);
            cmd.Parameters.AddWithValue("@mothername", mothername);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@ward", ward);
            cmd.Parameters.AddWithValue("@village", village);
            cmd.Parameters.AddWithValue("@district", district);
            cmd.Parameters.AddWithValue("@baptisamname", baptisedname);
            cmd.Parameters.AddWithValue("@vicername", vicer);
            cmd.Parameters.AddWithValue("@parishname", parish_name);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@baptiseddate", baptiseddate);
            cmd.ExecuteNonQuery();

           /* string qry1 = "insert into family_information1 (name,gender,dateofbaptisam,familyid) values(@orginalname, @gender,@baptiseddate,@familyid);"; ;
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@orginalname", baptisedperson);
            cmd1.Parameters.AddWithValue("@gender", gender);
            cmd1.Parameters.AddWithValue("@baptiseddate", baptiseddate);
            cmd1.Parameters.AddWithValue("@familyid", family_id);
            cmd1.ExecuteNonQuery();*/
        }
        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select family_id,CONCAT(family_id,' - ',housename) family  from Family_Register", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable SelectFamilyMembers()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("select FI.member_id,FI.name,FR.housename,FR.prayergroup,FR.city from family_information1 FI INNER JOIN Family_Register FR  ON FI.familyid = FR.family_id where familyid = @familyid ", con);
            cmd3.Parameters.AddWithValue("@familyid", family_id);
            SqlDataAdapter dap = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            dap.Fill(dt2);
            CloseConnection();
            return dt2;
        }
       /* public DataTable DisplayFamilDetails()
        {
            OpenConection();

            DataTable dt3 = new DataTable();
            SqlCommand cmd4 = new SqlCommand("select housename,prayergroup,city from Family_Register where familyid = @familyid ", con);
            cmd4.Parameters.AddWithValue("@familyid", family_id);
            SqlDataAdapter dap1 = new SqlDataAdapter(cmd4);// this will query your database and return the result to your datatable
            dap1.Fill(dt3);
            CloseConnection();
            return dt3;
        }*/
    }
}