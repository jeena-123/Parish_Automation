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
        private string currentdate;
        private string familyidd;
        private string name;
        private string address;
        private string mobno;
        private string ward;
        private string account_description;
        private string amount;
        private string date;
        private string familyid1;
        private string membername;
        private string memberaddress;
        private string membermob;
        private string certificatetype;
        private string purpose;
        private string id;
        private string family;
        private string familymembers;
        private string accountdes;
        private string familyyidd;
        private string masavri;
        private string kendravihitham;
        private string deadname;
        private string expensedate;
        private string expensedescription;
        private string expenseamount;
        private string familyyidd1;
        private string masavri1;
        private string kendravihitham1;
        private string addr;


        public string Familyid { get => familyid; set => familyid = value; }
        public string Assmembname { get => assmembname; set => assmembname = value; }
        public string Assomembaddress { get => assomembaddress; set => assomembaddress = value; }
        public string Assomembmobno { get => assomembmobno; set => assomembmobno = value; }
        public string Associationname { get => associationname; set => associationname = value; }
        public string Associationposition { get => associationposition; set => associationposition = value; }
        public string Yearfrom { get => yearfrom; set => yearfrom = value; }
        public string Yearto { get => yearto; set => yearto = value; }
        public string Memberid { get => memberid; set => memberid = value; }
        public string Currentdate { get => currentdate; set => currentdate = value; }
        public string Familyidd { get => familyidd; set => familyidd = value; }
        public string Name { get => name; set => name = value; }
        public string Address { get => address; set => address = value; }
        public string Mobno { get => mobno; set => mobno = value; }
        public string Ward { get => ward; set => ward = value; }
        public string Account_description { get => account_description; set => account_description = value; }
        public string Amount { get => amount; set => amount = value; }
        public string Familyid1 { get => familyid1; set => familyid1 = value; }
        public string Membername { get => membername; set => membername = value; }
        public string Memberaddress { get => memberaddress; set => memberaddress = value; }
        public string Membermob { get => membermob; set => membermob = value; }
        public string Certificatetype { get => certificatetype; set => certificatetype = value; }
        public string Purpose { get => purpose; set => purpose = value; }
        public string Date { get => date; set => date = value; }
        public string Id { get => id; set => id = value; }
        public string Family { get => family; set => family = value; }
        public string Familymembers { get => familymembers; set => familymembers = value; }
        public string Accountdes { get => accountdes; set => accountdes = value; }
        public string Familyyidd { get => familyyidd; set => familyyidd = value; }
        public string Masavri { get => masavri; set => masavri = value; }
        public string Kendravihitham { get => kendravihitham; set => kendravihitham = value; }
        public string Deadname { get => deadname; set => deadname = value; }
        public string Expensedate { get => expensedate; set => expensedate = value; }
        public string Expensedescription { get => expensedescription; set => expensedescription = value; }
        public string Expenseamount { get => expenseamount; set => expenseamount = value; }
        public string Familyyidd1 { get => familyyidd1; set => familyyidd1 = value; }
        public string Masavri1 { get => masavri1; set => masavri1 = value; }
        public string Kendravihitham1 { get => kendravihitham1; set => kendravihitham1 = value; }
        public string Addr { get => addr; set => addr = value; }

        public void InsertMember_Parameter()
        {
            OpenConection();
            string qry = "insert into association_register (familyid,Member_name,address,mobno,association_name,position_in_association,year_from,year_to) values(@familyid,@assomembname,@address,@mob,@assocname,@associationposition,@yearfrom,@yearto);";
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
        public DataTable ExecuteSelectData()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select *  from Family_Register", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable ExecuteAccountDetails()
        {
            OpenConection();
            DataTable dt = new DataTable();
            SqlCommand cmd1 = new SqlCommand("Select * from AmountDescriptionDetails", con);
            SqlDataAdapter daq = new SqlDataAdapter(cmd1);
            daq.Fill(dt);
            CloseConnection();
            return dt;
        }
        public DataTable SelectFamilyMembers()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("select * from family_information1 where familyid = @familyid ", con);
            cmd3.Parameters.AddWithValue("@familyid",familyid);
            SqlDataAdapter dap = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            dap.Fill(dt2);
            CloseConnection();
            return dt2;
        }
        
        public DataTable SelectFamilyMembers1()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("select * from family_information1 where familyid = @familyid ", con);
            cmd3.Parameters.AddWithValue("@familyid", id);
            SqlDataAdapter dap = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            dap.Fill(dt2);
            CloseConnection();
            return dt2;
        }
        public DataTable SelectFamilyMembers2()
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
                                            " FR.housename,FR.prayergroup from family_information1 FI INNER JOIN Family_Register FR ON " +
                                            " FI.familyid = FR.family_id where member_id=@memberidd", con);
            cmd3.Parameters.AddWithValue("@memberidd", Memberid);
            SqlDataAdapter dap = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            dap.Fill(dt2);
            CloseConnection();
            return dt2;
        }
        public void InsertMember_Parameters()
        {
            OpenConection();
            string qry = "insert into  ChurchIncomeRegister(date,familyid,Name,Address,mobno,ward,accountDescription,amount) values (@date,@familyid,@name,@address,@mob,@ward,@accountdescription,@amount);";
                  SqlCommand cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@date", currentdate);
            cmd.Parameters.AddWithValue("@familyid", Familyidd);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@mob", mobno);
            cmd.Parameters.AddWithValue("@ward", ward);
            cmd.Parameters.AddWithValue("@accountdescription",account_description);
            cmd.Parameters.AddWithValue("@amount", amount);
            cmd.ExecuteNonQuery();
        }
        public void InsertMember_ParameterValues()
        {
            OpenConection();
            string qry = "insert into  certificate_Request values (@familyid1,@name1,@address1,@mob1,@date,@certificate,@deadname,@purpose,@approved);";
          SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@familyid1", id);
            cmd.Parameters.AddWithValue("@name1",membername);
            cmd.Parameters.AddWithValue("@address1", memberaddress);
            cmd.Parameters.AddWithValue("@mob1", membermob);
            cmd.Parameters.AddWithValue("@date", Date);
            cmd.Parameters.AddWithValue("@certificate", certificatetype);
            cmd.Parameters.AddWithValue("@deadname", Deadname);
            cmd.Parameters.AddWithValue("@purpose", purpose);
            cmd.Parameters.AddWithValue("@approved", '0');
            
            cmd.ExecuteNonQuery();
        }
        public DataTable DisplayData()
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
        public DataTable ExecuteSelectDataa()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select * from family_information1 where familyid=@familyid ", con);
            cmd2.Parameters.AddWithValue("@familyid", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable DispalyDetails()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select date, familyid, Name, Address, mobno, ward, accountDescription, amount from ChurchIncomeRegister where familyid = @familyid   and(accountDescription = @description)",con);
            cmd2.Parameters.AddWithValue("@familyid", Family);
            //cmd2.Parameters.AddWithValue("@name", Familymembers);
            cmd2.Parameters.AddWithValue("@description", accountdes);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }
        public DataTable DispalyPayedDetails()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select date, familyid, Name, Address, mobno, ward, accountDescription, amount from ChurchIncomeRegister where accountDescription = @description", con);
            //cmd2.Parameters.AddWithValue("@familyid", Family);
            //cmd2.Parameters.AddWithValue("@name", Familymembers);
            cmd2.Parameters.AddWithValue("@description", accountdes);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }
        public DataTable SelectFamilies()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select familyid, name,relationwithfamilyhead,mobno,qualification,occupation from family_information1 where familyid=@familyid ", con);
            cmd2.Parameters.AddWithValue("@familyid", Familyyidd);
            cmd2.Parameters.AddWithValue("@approved", '0');
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable SelectFamilieAddress()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select housename from Family_Register where family_id=@familyid ", con);
            cmd2.Parameters.AddWithValue("@familyid", Familyyidd);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public void InsertIncome()
        {
            OpenConection();
            string qry = "insert into Masavari(family_id,address,kendravihitham,Masavari) values(@familyid,@address,@kendravihitham,@masavari);";
            SqlCommand cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@familyid", Familyyidd);
            cmd.Parameters.AddWithValue("@address", addr);
            cmd.Parameters.AddWithValue("@kendravihitham", kendravihitham);
            cmd.Parameters.AddWithValue("@masavari", masavri);
            cmd.ExecuteNonQuery();
        }
        

        public void InsertExpense()
        {
            OpenConection();
            string qry = "insert into ChurchIncomeRegister1(expensedate,expensedescription,expenseamount) values(@expdate,@expdescription,@expamount);";
            SqlCommand cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@expdate",Expensedate);
            cmd.Parameters.AddWithValue("@expdescription", Expensedescription);
            cmd.Parameters.AddWithValue("@expamount", Expenseamount);
            cmd.ExecuteNonQuery();
        }
        public DataTable DisplyRequestDetails()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand cmd = new SqlCommand("select Member_name, address, mobno, year_from, year_to, emailid from association_register where membertype = @vicer and approved=@approved ", con);
            cmd.Parameters.AddWithValue("@vicer", "vicer");
            cmd.Parameters.AddWithValue("@approved",'0');



            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;
        }
        public void updateVicer()
        {
            OpenConection();
            string qry = " delete  from login where member_type=@vicer";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@vicer", "vicer");
            cmd.ExecuteNonQuery();
            string qry1 = " update association_register set approved='1'where Member_name=@vicer";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.Parameters.AddWithValue("@vicer", "vicer");
            cmd1.ExecuteNonQuery();



        }
        public DataTable summasavri()
        {
            OpenConection();

            DataTable dt1 = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select sum(amount) as Total from ChurchIncomeRegister where accountDescription=@description ", con);
            cmd2.Parameters.AddWithValue("@description", accountdes);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);// this will query your database and return the result to your datatable
            da.Fill(dt1);
            CloseConnection();
            return dt1;
        }
        public DataTable DispalyExpenseDetails()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            SqlCommand cmd2 = new SqlCommand("select [expensedate],[expensedescription],[expenseamount] from ChurchIncomeRegister1 ", con);
            //cmd2.Parameters.AddWithValue("@familyid", Family);
            //cmd2.Parameters.AddWithValue("@name", Familymembers);
           // cmd2.Parameters.AddWithValue("@description1", Expensedescription);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;


        }

    }
}