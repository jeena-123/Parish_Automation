using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Parish_automation.classes
{
    public class Associationmemberclass
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
        private string familyid;
        private string assmembname;
        private string assomembaddress;
        private string assomembmobno;
        private string associationname;
        private string associationposition;
        private string yearfrom;
        private string yearto;
        private string memberid;

        public string Familyid { get => familyid; set => familyid = value; }
        public string Assmembname { get => assmembname; set => assmembname = value; }
        public string Assomembaddress { get => assomembaddress; set => assomembaddress = value; }
        public string Assomembmobno { get => assomembmobno; set => assomembmobno = value; }
        public string Associationname { get => associationname; set => associationname = value; }
        public string Associationposition { get => associationposition; set => associationposition = value; }
        public string Yearfrom { get => yearfrom; set => yearfrom = value; }
        public string Yearto { get => yearto; set => yearto = value; }
        public string Memberid { get => memberid; set => memberid = value; }
        public void InsertMember_Parameter()
        {
            OpenConection();
            string qry = "insert into association_register values(@familyid,@assomembname,@address,@mob,@assocname,@associationposition,@yearfrom,@yearto);";
            SqlCommand cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@familyid", familyid);
            cmd.Parameters.AddWithValue("@assomembname",assmembname);
            cmd.Parameters.AddWithValue("@address", Assomembaddress);
            cmd.Parameters.AddWithValue("@mob", Assomembmobno);
            cmd.Parameters.AddWithValue("@assocname", associationname);
            cmd.Parameters.AddWithValue("@associationposition", Associationposition);
            cmd.Parameters.AddWithValue("@yearfrom", yearfrom);
            cmd.Parameters.AddWithValue("@yearto", yearto);
  
            cmd.ExecuteNonQuery();
        }

        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select family_id,CONCAT(family_id,' - ',housename) family  from Family_Register", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable SelectFamilyMembers()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("select * from family_information1 where familyid = @familyid ", con);
            cmd3.Parameters.AddWithValue("@familyid", familyid);
            SqlDataAdapter dap = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            dap.Fill(dt2);
            CloseConnection();
            return dt2;
        }
        public DataTable SelectFamilyMemberDetails()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("select [member_id],[name],FI.mobno , " +
                                            " FR.housename from family_information1 FI INNER JOIN Family_Register FR ON " +
                                            " FI.familyid = FR.family_id where member_id=@memberidd", con);
            cmd3.Parameters.AddWithValue("@memberidd", Memberid);
            SqlDataAdapter dap = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            dap.Fill(dt2);
            CloseConnection();
            return dt2;
        }
    }
}