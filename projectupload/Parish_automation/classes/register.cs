using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace Parish_automation.classes
{
    public class register
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
        private string parishname;
        private string familyidentity;
        private string groomname;
        private string address;
        private string groomfathername;
        private string groommothername;
        private string groomage;
        private string groomdob;
        private string groomoccupation;
        private string withness1;
        private string bridename;
        private string brideaddress;
        private string bridefathername;
        private string bridemothername;
        private string brideage;
        private string bridedob;
        private string brideoccupation;
        private string withness2;
        private string dom;
        private string priestname;

        public string Registerno { get => registerno; set => registerno = value; }
        public string Parishname { get => parishname; set => parishname = value; }
        public string Familyidentity { get => familyidentity; set => familyidentity = value; }
        public string Groomname { get => groomname; set => groomname = value; }
        public string Address { get => address; set => address = value; }
        public string Groomfathername { get => groomfathername; set => groomfathername = value; }
        public string Groommothername { get => groommothername; set => groommothername = value; }
        public string Groomage { get => groomage; set => groomage = value; }
        public string Groomdob { get => groomdob; set => groomdob = value; }
        public string Groomoccupation { get => groomoccupation; set => groomoccupation = value; }
        public string Withness1 { get => withness1; set => withness1 = value; }
        public string Bridename { get => bridename; set => bridename = value; }
        public string Brideaddress { get => brideaddress; set => brideaddress = value; }
        public string Bridefathername { get => bridefathername; set => bridefathername = value; }
        public string Bridemothername { get => bridemothername; set => bridemothername = value; }
        public string Brideage { get => brideage; set => brideage = value; }
        public string Bridedob { get => bridedob; set => bridedob = value; }
        public string Brideoccupation { get => brideoccupation; set => brideoccupation = value; }
        public string Dom { get => dom; set => dom = value; }
        public string Priestname { get => priestname; set => priestname = value; }
        public string Withness2 { get => withness2; set => withness2 = value; }

        public void InsertMember_Parameter()
        {
            OpenConection();
            string qry = "insert into marriageregister values(@parishname,@familyidentity,@gname,@gaddress,@gfathername,@gmother,@gage,@gdob,@goccupation,@withness1,@bname,@baddress,@bfathername,@bmothername,@age,@bdob,@boccupation,@withness2,@dom,@priestname);";
            SqlCommand cmd = new SqlCommand(qry, con);

            
            cmd.Parameters.AddWithValue("@parishname", parishname);
            cmd.Parameters.AddWithValue("@familyidentity", familyidentity);
            cmd.Parameters.AddWithValue("@gname", groomname);
            cmd.Parameters.AddWithValue("@gaddress", address);
            cmd.Parameters.AddWithValue("@gfathername",groomfathername);
            cmd.Parameters.AddWithValue("@gmother",groommothername);
            cmd.Parameters.AddWithValue("@gage",groomage);
            cmd.Parameters.AddWithValue("@gdob", groomdob);
            cmd.Parameters.AddWithValue("@goccupation",groomoccupation);
            cmd.Parameters.AddWithValue("@withness1", withness1);
            cmd.Parameters.AddWithValue("@bname", bridename);
            cmd.Parameters.AddWithValue("@baddress", brideaddress);
            cmd.Parameters.AddWithValue("@bfathername", bridefathername);
            cmd.Parameters.AddWithValue("@bmothername", bridemothername);
            cmd.Parameters.AddWithValue("@age", brideage);
            cmd.Parameters.AddWithValue("@bdob", bridedob);
            cmd.Parameters.AddWithValue("@boccupation", brideoccupation);
            cmd.Parameters.AddWithValue("@withness2", withness2);
            cmd.Parameters.AddWithValue("@dom", dom);
            cmd.Parameters.AddWithValue("@priestname", priestname);
            cmd.ExecuteNonQuery();
        }
        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select family_id from Family_Register", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
    }
}