using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace Parish_automation.classes
{
    public class register
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
        private string registerno;
        private string parishname;
        private string familyidentity;
        private string groomname;
        private string address;
        private string groomfathername;
        private string groommothername;
        private string groomage;
        private string groomdob;
        private string groomoccupation;
        private string withness1;
        private string bridename;
        private string brideaddress;
        private string bridefathername;
        private string bridemothername;
        private string brideage;
        private string bridedob;
        private string brideoccupation;
        private string withness2;
        private string bridechurch;
        private string bridedioces;
        private string dom;
        private string priestname;
        private string name;
        private string memberid;
        private string selectdata;
        private DateTime date_from;
        private DateTime date_to;
        private string type;
        private string familyid;
        private string member_id;
        private string relation;
        private string Updatebutton;
        private string id;
        private string kendravihitham;
        private string masavari;


        public string Registerno { get => registerno; set => registerno = value; }
        public string Parishname { get => parishname; set => parishname = value; }
        public string Familyidentity { get => familyidentity; set => familyidentity = value; }
        public string Groomname { get => groomname; set => groomname = value; }
        public string Address { get => address; set => address = value; }
        public string Groomfathername { get => groomfathername; set => groomfathername = value; }
        public string Groommothername { get => groommothername; set => groommothername = value; }
        public string Groomage { get => groomage; set => groomage = value; }
        public string Groomdob { get => groomdob; set => groomdob = value; }
        public string Groomoccupation { get => groomoccupation; set => groomoccupation = value; }
        public string Withness1 { get => withness1; set => withness1 = value; }
        public string Bridename { get => bridename; set => bridename = value; }
        public string Brideaddress { get => brideaddress; set => brideaddress = value; }
        public string Bridefathername { get => bridefathername; set => bridefathername = value; }
        public string Bridemothername { get => bridemothername; set => bridemothername = value; }
        public string Brideage { get => brideage; set => brideage = value; }
        public string Bridedob { get => bridedob; set => bridedob = value; }
        public string Brideoccupation { get => brideoccupation; set => brideoccupation = value; }
        public string Dom { get => dom; set => dom = value; }
        public string Priestname { get => priestname; set => priestname = value; }
        public string Withness2 { get => withness2; set => withness2 = value; }
        public string Name { get => name; set => name = value; }
        public string Memberid { get => memberid; set => memberid = value; }
        public string Selectdata { get => selectdata; set => selectdata = value; }
       // public string Date_from { get => Date_from1; set => Date_from1 = value; }
      // public string Date_to { get => Date_to1; set => Date_to1 = value; }
        public string Type { get => type; set => type = value; }
        public DateTime Date_from { get => date_from; set => date_from = value; }
        public DateTime Date_to { get => date_to; set => date_to = value; }
        public string Bridechurch { get => bridechurch; set => bridechurch = value; }
        public string Bridedioces { get => bridedioces; set => bridedioces = value; }
        public string Familyid { get => familyid; set => familyid = value; }
        public string Member_id { get => member_id; set => member_id = value; }
        public string Relation { get => relation; set => relation = value; }
        public string Updatebutton1 { get => Updatebutton; set => Updatebutton = value; }
        public string Id { get => id; set => id = value; }
        public string Kendravihitham { get => kendravihitham; set => kendravihitham = value; }
        public string Masavari { get => masavari; set => masavari = value; }

        public void InsertMember_Parameter()
        {
            OpenConection();
            string qry = "insert into marriageregister values(@parishname,@familyidentity,@gname,@gaddress,@gfathername,@gmother,@gage,@gdob,@goccupation,@withness1,@bname,@baddress,@bfathername,@bmothername,@age,@bdob,@boccupation,@withness2,@churchnamebride,@diocesname,@dom,@priestname);";
            SqlCommand cmd = new SqlCommand(qry, con);

            
            cmd.Parameters.AddWithValue("@parishname", parishname);
            cmd.Parameters.AddWithValue("@familyidentity", familyidentity);
            cmd.Parameters.AddWithValue("@gname", groomname);
            cmd.Parameters.AddWithValue("@gaddress", address);
            cmd.Parameters.AddWithValue("@gfathername",groomfathername);
            cmd.Parameters.AddWithValue("@gmother",groommothername);
            cmd.Parameters.AddWithValue("@gage",groomage);
            cmd.Parameters.AddWithValue("@gdob", groomdob);
            cmd.Parameters.AddWithValue("@goccupation",groomoccupation);
            cmd.Parameters.AddWithValue("@withness1", withness1);
            cmd.Parameters.AddWithValue("@bname", bridename);
            cmd.Parameters.AddWithValue("@baddress", brideaddress);
            cmd.Parameters.AddWithValue("@bfathername", bridefathername);
            cmd.Parameters.AddWithValue("@bmothername", bridemothername);
            cmd.Parameters.AddWithValue("@age", brideage);
            cmd.Parameters.AddWithValue("@bdob", bridedob);
            cmd.Parameters.AddWithValue("@boccupation", brideoccupation);
            cmd.Parameters.AddWithValue("@withness2", withness2);
            cmd.Parameters.AddWithValue("@churchnamebride", Bridechurch);
            cmd.Parameters.AddWithValue("@diocesname", Bridedioces);
            cmd.Parameters.AddWithValue("@dom", dom);
            cmd.Parameters.AddWithValue("@priestname", priestname);
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
            cmd3.Parameters.AddWithValue("@familyid", familyidentity);
            SqlDataAdapter dap = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            dap.Fill(dt2);
            CloseConnection();
            return dt2;
        }

        public DataTable SelectFamilyMemberDetails()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("select [member_id],[name],DATEDIFF(year, FI.dob,GETDATE()) AS DateDiff , DOB,FI.occupation , "+
                                            " FR.housename from family_information1 FI INNER JOIN Family_Register FR ON "+
                                            " FI.familyid = FR.family_id where member_id=@memberidd", con);
           cmd3.Parameters.AddWithValue("@memberidd", memberid);
            SqlDataAdapter dap = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            dap.Fill(dt2);
            CloseConnection();
            return dt2;
        }
        /* public DataTable SelectEachFamilyMembers()
         {
             OpenConection();

             DataTable dt3 = new DataTable();
             SqlCommand cmd4 = new SqlCommand("select dob,occupation  from family_information1 where familyid=@familyidentity", con);
             cmd4.Parameters.AddWithValue("@familyidentity", familyidentity);
             SqlDataAdapter dap = new SqlDataAdapter(cmd4);// this will query your database and return the result to your datatable
             dap.Fill(dt3);
             CloseConnection();
             return dt3;
         }*/
        public DataTable DisplyDetails()
        {
            string condition = string.Empty;
            condition += (type == "0" ? string.Empty : string.Empty);
            condition += (type == "1" ? "FI.dob between like @datefrom AND like @date_to" : string.Empty);
            condition += (type == "2" ? "FI.dateofbaptisam between like @datefrom AND like @date_to" : string.Empty);
            condition += (type == "3" ? "FI.marriage_date between like @datefrom AND like @date_to" : string.Empty);
            condition += (type == "4" ? "FI.date_of_death between like @datefrom AND like @date_to" : string.Empty);


            OpenConection();
            DataTable dtReg = new DataTable();
            string qry = "select  FI.familyid,FI.name, FI.DOB,FR.housename from family_information1 FI INNER JOIN Family_Register FR ON " +
                                  " FI.familyid = FR.family_id where  " + condition;
                                 
            SqlCommand cmd = new SqlCommand(qry, con);


            //cmd.Parameters.AddWithValue("@datefrom", Date_from1);
            cmd.Parameters.AddWithValue("@date_to", Date_to);
            
           // cmd.ExecuteNonQuery();
           // command.Parameters.AddWithValue("@username", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);// this will query your database and return the result to your datatable

            da.Fill(dtReg);
            CloseConnection();
            return dtReg;
        }
        public DataTable UpdateProfile()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("select member_id,name,relationwithfamilyhead from family_information1 where familyid = @familyid ", con);
            cmd3.Parameters.AddWithValue("@familyid", familyid);
            SqlDataAdapter da = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            da.Fill(dt2);
            CloseConnection();
            return dt2;
        }
        public DataTable UpdateEditedProfile()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("Update family_information1  set relationwithfamilyhead=@relation where member_id = @familyid ", con);
            cmd3.Parameters.AddWithValue("@familyid", Updatebutton);
            cmd3.Parameters.AddWithValue("@relation", relation);
            SqlDataAdapter da = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            da.Fill(dt2);
            CloseConnection();
            return dt2;
        
        }
        public DataTable UpdateFamilyIncome()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("select family_id,address,kendravihitham,Masavari from Masavari ", con);
            
            SqlDataAdapter da = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            da.Fill(dt2);
            CloseConnection();
            return dt2;

        }
        public DataTable UpdateFam()
        {
            OpenConection();

            DataTable dt2 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("Update Masavari  set kendravihitham=@kendravihitham,Masavari=@Masavari where family_id = @familyid ", con);
            cmd3.Parameters.AddWithValue("@familyid", id);
            cmd3.Parameters.AddWithValue("@kendravihitham", kendravihitham);
            cmd3.Parameters.AddWithValue("@Masavari", masavari);
            SqlDataAdapter da = new SqlDataAdapter(cmd3);// this will query your database and return the result to your datatable
            da.Fill(dt2);
            CloseConnection();
            return dt2;

        }
    }
}