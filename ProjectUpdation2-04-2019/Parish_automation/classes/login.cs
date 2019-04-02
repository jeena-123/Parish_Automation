using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace Parish_automation
{
    public class login
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
        private string username;
        private string password;

        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }

        public string ExecuteSelect()
        {
            OpenConection();
            string qry = "select member_type from login where username= @username and password= @password";
            // ExecuteQueries(qry);
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            //cmd.ExecuteNonQuery();
            string type = "";
            object status = cmd.ExecuteScalar();
            if (status != DBNull.Value)
            {
                type = (string)status;
            }

            //DataTable dtReg = new DataTable();
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            // da.Fill();

            CloseConnection();
            return type;
        }
    }
}