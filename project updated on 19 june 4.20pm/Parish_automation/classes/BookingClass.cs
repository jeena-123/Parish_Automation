using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Parish_automation.classes
{
    public class BookingClass
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

        private string event_type;
        private string event_date;
        private int id;
        private string parish_hall;

        private string name;
        private string address;
        private string mob_no;
        private string emailid;
        private string auditorium_name;
        private string e_type;
        private string e_date;
        private string no_of_days;
        private string amount;
        private string mob;

        public string Event_type { get => event_type; set => event_type = value; }
        public string Event_date { get => event_date; set => event_date = value; }
        public int Id { get => id; set => id = value; }
        public string Parish_hall { get => parish_hall; set => parish_hall = value; }
        public string Name { get => name; set => name = value; }
        public string Address { get => address; set => address = value; }
        
        public string Emailid { get => emailid; set => emailid = value; }
        public string Auditorium_name { get => auditorium_name; set => auditorium_name = value; }
        public string E_type { get => e_type; set => e_type = value; }
        public string E_date { get => e_date; set => e_date = value; }
        public string No_of_days { get => no_of_days; set => no_of_days = value; }
        public string Amount { get => amount; set => amount = value; }
        public string Mob { get => mob; set => mob = value; }
        public string Mob_no { get => mob_no; set => mob_no = value; }

        public DataTable CheckAvail()
        {
            OpenConection();

            DataTable dtCheck = new DataTable();
            SqlCommand cmd = new SqlCommand("select id from ParishHallBooking where eventdate=@edate and audiname in (@eparishhall,'Both') ", con);
            cmd.Parameters.AddWithValue("@edate", event_date);
            cmd.Parameters.AddWithValue("@eparishhall", parish_hall);
            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtCheck);
            CloseConnection();
            return dtCheck;
        }

       public void InsertBookingDetails()
        {
            OpenConection();
            string qry = "insert into ParishHallBooking(name,address,mobno,emailid,audiname,eventtype,eventdate,noofdays,amount,is_approved)values(@sname,@saddress,@smobno,@semail,@saudiname,@etype,@edate,@number,@samount,@approved)";
          SqlCommand cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@sname",name);
            cmd.Parameters.AddWithValue("@saddress", address);
            cmd.Parameters.AddWithValue("@smobno", Mob_no);
            cmd.Parameters.AddWithValue("@semail",emailid);
            cmd.Parameters.AddWithValue("@saudiname", auditorium_name);
            cmd.Parameters.AddWithValue("@etype", e_type);
            cmd.Parameters.AddWithValue("@edate", e_date);
            cmd.Parameters.AddWithValue("@number", no_of_days);
            cmd.Parameters.AddWithValue("@samount", amount);
            cmd.Parameters.AddWithValue("@approved", '0');
            cmd.ExecuteNonQuery();
        }
    }
}