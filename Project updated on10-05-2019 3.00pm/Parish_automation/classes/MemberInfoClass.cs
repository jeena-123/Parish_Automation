using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Parish_automation.classes
{
    public class MemberInfoClass
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
        private string member_id;
        private string name;
        private string relation_family_head;
        private string date_of_birth;
        private string mobno1;
        private string gender;
        private string date_of_baptisam;
        private string email_id;
        private string blood_group;
        //private string family_income;
        private string marital_status;
        private string date_of_marriage;
        private string qualification;
        private string occupation;
        private string id;
        




        public string Member_id { get => member_id; set => member_id = value; }
        public string Name { get => name; set => name = value; }
        public string Relation_family_head { get => relation_family_head; set => relation_family_head = value; }
        public string Date_of_birth { get => date_of_birth; set => date_of_birth = value; }
        public string Mobno1 { get => mobno1; set => mobno1 = value; }
        public string Gender { get => gender; set => gender = value; }
        public string Date_of_baptisam { get => date_of_baptisam; set => date_of_baptisam = value; }
        public string Email_id { get => email_id; set => email_id = value; }
        public string Blood_group { get => blood_group; set => blood_group = value; }
        //public string Family_income { get => family_income; set => family_income = value; }
        public string Marital_status { get => marital_status; set => marital_status = value; }
        public string Date_of_marriage { get => date_of_marriage; set => date_of_marriage = value; }
        public string Qualification { get => qualification; set => qualification = value; }
        public string Occupation { get => occupation; set => occupation = value; }
        public string Id { get => id; set => id = value; }
       

        public void InsertMember_Parameter()
        {
            OpenConection();
            string qry = "insert into family_information1(member_id,name,relationwithfamilyhead,dob,gender,mobno,dateofbaptisam,email_id,blood_group,marital_status,marriage_date,qualification,occupation,familyid) values(@member,@name,@relationwithfamilyhead,@dob,@gender,@mobno,@dateofbaptisam,@emailid,@bloodgrp,@maritalstatus,@marriagedate,@qualification,@occupation,@familyidy);";
            SqlCommand cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@member", member_id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@relationwithfamilyhead", relation_family_head);
            cmd.Parameters.AddWithValue("@dob", date_of_birth);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@mobno", mobno1);
            cmd.Parameters.AddWithValue("@dateofbaptisam", date_of_baptisam);
            cmd.Parameters.AddWithValue("@emailid", email_id);
            cmd.Parameters.AddWithValue("@bloodgrp", blood_group);
           // cmd.Parameters.AddWithValue("@familyincome", family_income);
            cmd.Parameters.AddWithValue("@maritalstatus", marital_status);
            cmd.Parameters.AddWithValue("@marriagedate", date_of_marriage);
            cmd.Parameters.AddWithValue("@qualification", qualification);
            cmd.Parameters.AddWithValue("@occupation", occupation);
            cmd.Parameters.AddWithValue("@familyidy", id);
            cmd.ExecuteNonQuery();
        }
        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select family_id from Family_Register where family_id=@username", con);
            cmd2.Parameters.AddWithValue("@username", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public void GenerateAutoID()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("select count(name) from family_information1 ", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
                member_id = "MEMB" + count;
            }
            else
            {
                count = 1;
                member_id = "" + count;
            }
            

        }
       
       

    }
}