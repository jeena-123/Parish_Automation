using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Parish_automation.classes
{
    public class Registerbooking
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
        private string name1;
        private string address;
        private string mobno;
        private string email;
        private string audiname;
        private string eventtype;
        private string eventdate;
        private string eventdays;
        private string amount;
        private string id;

        public string Name1 { get => name1; set => name1 = value; }
        public string Address { get => address; set => address = value; }
        public string Mobno { get => mobno; set => mobno = value; }
        public string Email { get => email; set => email = value; }
        public string Audiname { get => audiname; set => audiname = value; }
        public string Eventtype { get => eventtype; set => eventtype = value; }
        public string Eventdate { get => eventdate; set => eventdate = value; }
        public string Eventdays { get => eventdays; set => eventdays = value; }
        public string Amount { get => amount; set => amount = value; }
        public string Id { get => id; set => id = value; }
        public void InsertParameter()
        {
            OpenConection();
            string qry = "insert into ParishHallBooking values(@name,@address,@mobno,@email,@auditype,@eventtype,@eventdate,@noofdays,@amount);";
            SqlCommand cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@name", name1);
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
        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select family_id,family_head_name,housename,resphoneno from Family_Register where family_id=@username", con);
            cmd2.Parameters.AddWithValue("@username", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
    }
}