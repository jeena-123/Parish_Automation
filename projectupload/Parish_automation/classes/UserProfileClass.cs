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
        private string familyname;
        private string mobilenumb;
        private string prayergroup;

        public string Id { get => id; set => id = value; }
        public string Namehead { get => namehead; set => namehead = value; }
        public string Familyname { get => familyname; set => familyname = value; }
        public string Mobilenumb { get => mobilenumb; set => mobilenumb = value; }
        public string Prayergroup { get => prayergroup; set => prayergroup = value; }
    }
}