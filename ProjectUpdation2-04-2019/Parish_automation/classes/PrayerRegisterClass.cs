using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Parish_automation.classes
{
    public class PrayerRegisterClass
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
        private string prayer_grp;
        private string familyidd;
        private string headname;
        private string address1;
        private string prayertype;
        private string prayertyme;
        private string prayerdate;

        public string Prayer_grp { get => prayer_grp; set => prayer_grp = value; }
        public string Familyidd { get => familyidd; set => familyidd = value; }
        public string Headname { get => headname; set => headname = value; }
        public string Address1 { get => address1; set => address1 = value; }
        public string Prayertype { get => prayertype; set => prayertype = value; }
        public string Prayertyme { get => prayertyme; set => prayertyme = value; }
        public string Prayerdate { get => prayerdate; set => prayerdate = value; }

        public void InsertMember_Parameter()
        {
            OpenConection();
            string qry = "insert into prayerregister values(@grp,@family,@headname,@address,@type,@time,@date);";
            SqlCommand cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@grp", prayer_grp);
            cmd.Parameters.AddWithValue("@family", familyidd);
            cmd.Parameters.AddWithValue("@headname", headname);
            cmd.Parameters.AddWithValue("@address", address1);
            cmd.Parameters.AddWithValue("@type", prayertype);
            cmd.Parameters.AddWithValue("@time", prayertyme);
            cmd.Parameters.AddWithValue("@date", Prayerdate);


        }
        public DataTable ExecuteSelect1()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select family_id from Family_Register", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable ExecuteSelectQuery()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("select prayername from prayer_group", con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            da1.Fill(dt2);
            CloseConnection();
            return dt2;
        }

        //public DataTable ExecuteSelectQueries()
        //{
           // OpenConection();

           // DataTable qrt = new DataTable();
           // string str = "select family_head_name,housename from Family_Register where family_id= @family;";
           // SqlCommand command = new SqlCommand(str, con);
           // command.Parameters.AddWithValue("@family", familyidd);

           // SqlDataAdapter dae = new SqlDataAdapter(command);
           // dae.Fill(qrt);
           // CloseConnection();
           // return qrt;


      //  }

    }
}