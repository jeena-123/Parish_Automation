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
        private string name;
        private string address;
        private string mobno;
        private string email;
        private string audiname;
        private string eventtype;
        private string eventdate;
        private string eventdays;
        private string amount;
        private string id1;


        public string Id { get => id; set => id = value; }
        public string Namehead { get => namehead; set => namehead = value; }
        // public string Familyname1 { get => familyname1; set => familyname1 = value; }
        public string Mobilenumb { get => mobilenumb; set => mobilenumb = value; }
        public string Prayergroup { get => prayergroup; set => prayergroup = value; }
        public string Fid { get => fid; set => fid = value; }
        public string Fami { get => fami; set => fami = value; }
        public string Name { get => name; set => name = value; }
        public string Address { get => address; set => address = value; }
        public string Mobno { get => mobno; set => mobno = value; }
        public string Email { get => email; set => email = value; }
        public string Audiname { get => audiname; set => audiname = value; }
        public string Eventtype { get => eventtype; set => eventtype = value; }
        public string Eventdate { get => eventdate; set => eventdate = value; }
        public string Eventdays { get => eventdays; set => eventdays = value; }
        public string Amount { get => amount; set => amount = value; }
        public string Id1 { get => id1; set => id1 = value; }

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
        public void InsertParameter()
        {
            OpenConection();
            string qry = "insert into ParishHallBooking values(@name,@address,@mobno,@email,@auditype,@eventtype,@eventdate,@noofdays,@amount);";
            SqlCommand cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@mobno", Mobno);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@auditype", audiname);
            cmd.Parameters.AddWithValue("@eventtype", eventtype);
            cmd.Parameters.AddWithValue("@eventdate", eventdate);
            cmd.Parameters.AddWithValue("@noofdays", eventdays);
            cmd.Parameters.AddWithValue("@amount", amount);
            
            cmd.ExecuteNonQuery();

        }
        public DataTable ExecuteSelectData()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select family_head_name, housename,resphoneno from  Family_Register where family_id=@username", con);
            cmd2.Parameters.AddWithValue("@username", Id1);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
    }
}