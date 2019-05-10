using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace Parish_automation.classes
{
    public class parish
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
        private string family_id;
        private string housename;
        private string place;
        private string city;
        private string mobno;
        private string familyhead;
        private string upload;
        private string prayergrp;
        private string member_id;
        private string name;
        private string relation_family_head;
        private string date_of_birth;
        private string mobno1;
        private string gender;
        private string date_of_baptisam;
        private string email_id;
        private string blood_group;
        private string family_income1;
        private string marital_status;
        private string date_of_marriage;
        private string qualification;
        private string occupation;
        private string id;
        private string username;
        private string password;
        private string email;


        public string Family_id { get => family_id; set => family_id = value; }
        public string Housename { get => housename; set => housename = value; }
        public string Place { get => place; set => place = value; }
        public string City { get => city; set => city = value; }

        public string Familyhead { get => familyhead; set => familyhead = value; }
        public string Upload { get => upload; set => upload = value; }
        public string Prayergrp { get => prayergrp; set => prayergrp = value; }

        public string Mobno { get => mobno; set => mobno = value; }
        public string Member_id { get => member_id; set => member_id = value; }
        public string Name { get => name; set => name = value; }
        public string Relation_family_head { get => relation_family_head; set => relation_family_head = value; }

        public string Mobno1 { get => mobno1; set => mobno1 = value; }
        public string Gender { get => gender; set => gender = value; }

        public string Email_id { get => email_id; set => email_id = value; }
        public string Blood_group { get => blood_group; set => blood_group = value; }

        public string Marital_status { get => marital_status; set => marital_status = value; }

        public string Qualification { get => qualification; set => qualification = value; }
        public string Occupation { get => occupation; set => occupation = value; }

        
        public string Date_of_birth { get => date_of_birth; set => date_of_birth = value; }
        public string Date_of_baptisam { get => date_of_baptisam; set => date_of_baptisam = value; }
        public string Date_of_marriage { get => date_of_marriage; set => date_of_marriage = value; }
        public string Id { get => id; set => id = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string Family_income1 { get => family_income1; set => family_income1 = value; }
        public string Email { get => email; set => email = value; }

        public void InsertFamily()
        {
            OpenConection();
            string qry = "insert into Family_Register values( @familyid,@housename,@place,@city,@resphoneno,@family_head_name,@prayergroup,@upload,@username,@password,@familyincome,@isappr,@email);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@familyid", family_id);
            cmd.Parameters.AddWithValue("@housename", housename);
            cmd.Parameters.AddWithValue("@place", place);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@resphoneno", mobno);
            cmd.Parameters.AddWithValue ("@family_head_name", familyhead);
            cmd.Parameters.AddWithValue("@prayergroup", prayergrp);
            cmd.Parameters.AddWithValue("@familyincome", Family_income1);
            cmd.Parameters.AddWithValue("@upload", upload);
            cmd.Parameters.AddWithValue("@username", family_id);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@isappr", "0");
            cmd.Parameters.AddWithValue("@email", email);
            cmd.ExecuteNonQuery();

            string qry1 = "insert into login values(@username,@password,@member_type);";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@username", family_id);
            cmd1.Parameters.AddWithValue("@password", password);
            cmd1.Parameters.AddWithValue("@member_type", "family_member");
            cmd1.ExecuteNonQuery();




        }

        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select * from prayer_group", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
         }
        public void GenerateAutoID()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select count(housename) from Family_Register ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                family_id = "CHE" + count;
            }
            else
            {
                count = 1;
                family_id = "" + count;
            }

        }


    }
}