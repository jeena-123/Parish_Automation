using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Parish_automation.classes
{
    public class death
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
        private string deathregno;
        private string familyid;
        private string name;
        private string address;
        private int age;
        private string dodeath;
        private string dofuneral;
        private string priestname;
        private string deathreason;
        private string memberid;
        private string selectdata;
        private string date_from;
        private string date_to;
        private string updatebutton;
        private string updatebutton2;

        public string Deathregno { get => deathregno; set => deathregno = value; }
        public string Familyid { get => familyid; set => familyid = value; }
        public string Name { get => name; set => name = value; }
        public string Address { get => address; set => address = value; }
        public int Age { get => age; set => age = value; }
        public string Dodeath { get => dodeath; set => dodeath = value; }
        public string Dofuneral { get => dofuneral; set => dofuneral = value; }
        public string Priestname { get => priestname; set => priestname = value; }
        public string Deathreason { get => deathreason; set => deathreason = value; }
        public string Memberid { get => memberid; set => memberid = value; }
        public string Selectdata { get => selectdata; set => selectdata = value; }
        public string Date_from { get => date_from; set => date_from = value; }
        public string Date_to { get => date_to; set => date_to = value; }
        public string Updatebutton { get => updatebutton; set => updatebutton = value; }
        public string Updatebutton2 { get => updatebutton2; set => updatebutton2 = value; }

        public void InsertMember_Parameter()
        {
            OpenConection();
           
            SqlCommand cmd = new SqlCommand("update  family_information1 set date_of_death=@dateofdeath,date_of_funeral=@dateoffuneral,death_reason=@deathreasonmname, status=@death where familyid=@familyid1 and member_id=@name",con);

            cmd.Parameters.AddWithValue("@familyid1",familyid );
            cmd.Parameters.AddWithValue("@name", name);
            //cmd.Parameters.AddWithValue("@address", address);
            //cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@dateofdeath", dodeath);
            cmd.Parameters.AddWithValue("@dateoffuneral", Dofuneral);
            //cmd.Parameters.AddWithValue("@death","Died");
            cmd.Parameters.AddWithValue("@deathreasonmname", Deathreason);
            cmd.Parameters.AddWithValue("@death", "Died");
            cmd.ExecuteNonQuery();
        }

        public DataTable ExecuteSelect()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select family_id from Family_Register", con);
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
            SqlCommand cmd3 = new SqlCommand("select [member_id],[name], DATEDIFF(year, FI.dob,GETDATE()) AS DateDiff , "+ 
          " FR.housename from family_information1 FI INNER JOIN Family_Register FR ON"+
            "  FI.familyid = FR.family_id  where member_id=@memberidd", con);
            cmd3.Parameters.AddWithValue("@memberidd", Memberid);
            SqlDataAdapter dap = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            dap.Fill(dt2);
            CloseConnection();
            return dt2;
        }
        public DataTable DisplyDetails()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            string qry = "select familyid,Member_name,address,mobno,position_in_association,Year_from,Year_to from association_register where  year_from between @datefrom AND @date_to  and (association_name=@association) ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@association",selectdata);
            cmd.Parameters.AddWithValue("@datefrom", date_from);
            cmd.Parameters.AddWithValue("@date_to", Date_to);
            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;
        }
        public DataTable DisplyRequestDetails()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            string qry = "select family_id,housename,place,resphoneno,family_head_name,is_approved, " +
                        " CASE WHEN is_approved=0 THEN 'NOT APPROVED' " +
                        " ELSE 'APPROVED' END AS APR_STATUS " +                       
                        " from Family_Register  ";
            /*       string qry = "select family_id,housename,place,resphoneno,family_head_name, " +
                                " CASE WHEN is_approved=0 THEN 'NOT APPROVED' " +
                                " ELSE 'APPROVED' END AS APR_STATUS, "+
                                " CASE WHEN is_approved=0 THEN 'false' " +
                                " ELSE 'true' END AS APR_ENABLED " +
                                "from Family_Register  ";*/
            SqlCommand cmd = new SqlCommand(qry, con);
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;
        }
        public void UpdateTable()
        {
            OpenConection();

            SqlCommand cmd = new SqlCommand("update  Family_Register set is_approved='1' where family_id=@family", con);

            cmd.Parameters.AddWithValue("@family", updatebutton);
            
            cmd.ExecuteNonQuery();
        }
        public DataTable DisplyParishRequestDetails()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            string qry = "select name,address,mobno,emailid,audiname,eventtype,eventdate,noofdays,amount,is_approved, " +
                        " CASE WHEN is_approved=0 THEN 'NOT APPROVED' " +
                        " ELSE 'APPROVED' END AS APR_STATUS " +
                        " from ParishHallBooking  ";
            /*       string qry = "select family_id,housename,place,resphoneno,family_head_name, " +
                                " CASE WHEN is_approved=0 THEN 'NOT APPROVED' " +
                                " ELSE 'APPROVED' END AS APR_STATUS, "+
                                " CASE WHEN is_approved=0 THEN 'false' " +
                                " ELSE 'true' END AS APR_ENABLED " +
                                "from Family_Register  ";*/
            SqlCommand cmd = new SqlCommand(qry, con);

            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;
        }
        public void UpdateTable2()
        {
            OpenConection();

            SqlCommand cmd = new SqlCommand("update ParishHallBooking  set is_approved='1' where name=@family1", con);

            cmd.Parameters.AddWithValue("@family1", updatebutton2);

            cmd.ExecuteNonQuery();
        }

    }

}