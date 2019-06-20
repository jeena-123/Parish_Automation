using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Parish_automation.classes
{
    public class Budget
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
        private string masavri;

        public string Masavri { get => masavri; set => masavri = value; }

        public DataTable summasavri()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select sum(amount) as Masavari from ChurchIncomeRegister where accountDescription=@masavari ", con);
            cmd2.Parameters.AddWithValue("@masavari", masavri);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
    }
}