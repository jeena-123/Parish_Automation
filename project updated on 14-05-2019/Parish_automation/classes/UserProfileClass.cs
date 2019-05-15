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
        private string familyid;
        private string vicername;
        private string viceraddress;
        private string vicermobno;
        private string viceremail;
        private string username;
        private string password;
        private string from;
        private string to;
        private string id1;

        //dues
        private string fyid;
        private DateTime sdate;
        private DateTime cdate;
        private string kfixedamount;
        private string mfixedamount;
        private double kpaid;
        private double mpaid;
        private DateTime date;


        public string Id { get => id; set => id = value; }
        public string Namehead { get => namehead; set => namehead = value; }
        // public string Familyname1 { get => familyname1; set => familyname1 = value; }
        public string Mobilenumb { get => mobilenumb; set => mobilenumb = value; }
        public string Prayergroup { get => prayergroup; set => prayergroup = value; }
        public string Fid { get => fid; set => fid = value; }
        public string Fami { get => fami; set => fami = value; }
        public string Familyid { get => familyid; set => familyid = value; }
        public string Vicername { get => vicername; set => vicername = value; }
        public string Viceraddress { get => viceraddress; set => viceraddress = value; }
        public string Vicermobno { get => vicermobno; set => vicermobno = value; }
        public string Viceremail { get => viceremail; set => viceremail = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string From { get => from; set => from = value; }
        public string To { get => to; set => to = value; }
        public string Id1 { get => id1; set => id1 = value; }
        public string Fyid { get => fyid; set => fyid = value; }
        public DateTime Sdate { get => sdate; set => sdate = value; }
        public DateTime Cdate { get => cdate; set => cdate = value; }
        public string Kfixedamount { get => kfixedamount; set => kfixedamount = value; }
        public string Mfixedamount { get => mfixedamount; set => mfixedamount = value; }
        public DateTime Date { get => date; set => date = value; }
        public double Kpaid { get => kpaid; set => kpaid = value; }
        public double Mpaid { get => mpaid; set => mpaid = value; }

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
        public DataTable DispalyDetails()
        {
            OpenConection();
            DataTable dtReg1 = new DataTable();
            SqlCommand cmd6 = new SqlCommand("select date,familyid,Name,Address,mobno,ward,accountDescription,amount from ChurchIncomeRegister where familyid =@username", con);
            cmd6.Parameters.AddWithValue("@username", Familyid);
            SqlDataAdapter da = new SqlDataAdapter(cmd6);
            da.Fill(dtReg1);
            CloseConnection();
            return dtReg1;


        }
        public void InsertParameter()
        {
            OpenConection();
            string qry = "insert into association_register (Member_name,address,mobno,year_from,year_to,emailid,username,password) values(@name,@address,@mobno,@yearfrom,@yearto,@email,@username,@password)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", Vicername);
            cmd.Parameters.AddWithValue("@address", viceraddress);
            cmd.Parameters.AddWithValue("@mobno", vicermobno);
            cmd.Parameters.AddWithValue("@yearfrom", from);
            cmd.Parameters.AddWithValue("@yearto", to);
            cmd.Parameters.AddWithValue("@email", Viceremail);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.ExecuteNonQuery();
        }
        public DataTable FetchName()
        {
            OpenConection();
            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select Member_name from association_register where username=@username", con);
            cmd2.Parameters.AddWithValue("@username", id1);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable FetchFixedAmount()
        {
            OpenConection();
            DataTable dtfixed = new DataTable();
            SqlCommand cmd = new SqlCommand("select Date,kendravihitham,Masavari from Masavari where family_id=@fid", con);
            cmd.Parameters.AddWithValue("@fid", fyid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtfixed);
            CloseConnection();
            return dtfixed;
        }
        public DataTable kPaidAmount()
        {
            OpenConection();
            DataTable dtkpaid = new DataTable();
            SqlCommand cmd = new SqlCommand("select sum(amount) as pamount from ChurchIncomeRegister where familyid=@fid and accountDescription=' KendraVihidham'", con);
            cmd.Parameters.AddWithValue("@fid",fyid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtkpaid);
            CloseConnection();
            return dtkpaid;
        }
        public DataTable mPaidAmount()
        {
            OpenConection();
            DataTable dtmpaid = new DataTable();
            SqlCommand cmd = new SqlCommand("select sum(amount) as mamount from ChurchIncomeRegister where familyid=@fid and accountDescription='Masavari'", con);
            cmd.Parameters.AddWithValue("@fid", fyid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtmpaid);
            CloseConnection();
            return dtmpaid;
        }
    }     
}