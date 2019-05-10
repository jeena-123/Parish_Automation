using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation.classes;
using System.Data;
using System.IO;

namespace Parish_automation.Master1
{
    public partial class Registerationform : System.Web.UI.Page
    {
        parish obj = new parish();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                obj.GenerateAutoID();
                familyid.Text = obj.Family_id;

                DataTable dt1 = new DataTable();
                dt1 = obj.ExecuteSelect();
                if (dt1.Rows.Count > 0)
                {
                    drpdwnprayer.DataSource = dt1;
                    //   drpdwnprayer.DataTextField = "prayername";
                    //  drpdwnprayer.DataValueField = "prayername";
                    drpdwnprayer.DataBind();
                }
            }
            



            
        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            obj.Family_id = familyid.Text;
            obj.Familyhead = txtfamilyhead.Text;
            obj.Email = txtemail.Text;
            obj.Housename = txthousename.Text;
            obj.City = txtcity.Text;
            obj.Place = txtplace.Text;
            obj.Mobno = txtmobno.Text.ToString();
            obj.Prayergrp = drpdwnprayer.SelectedValue;
            obj.Family_income1 = family.Text;
            obj.Username = familyid.Text;
            obj.Password = password.Text;
           

            String filename = Path.GetFileName(img1.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
            {
                string src = Server.MapPath("~/profileimages") + "\\" + txtfamilyhead.Text + ".JPG";
                img1.PostedFile.SaveAs(src);
                string picpath = "~/profileimages/" + txtfamilyhead.Text + ".JPG";
                obj.Upload = picpath;
            }
            
            obj.InsertFamily();

            Response.Write("<script LANGUAGE='JavaScript'>alert(' Sucessfully Registered')</script>");
             familyid.Text="";
             txtfamilyhead.Text="";
             txtemail.Text="";
             txthousename.Text="";
             txtcity.Text="";
             txtplace.Text="";
             txtmobno.Text = "";
             drpdwnprayer.SelectedIndex=0;
             family.Text="";
             familyid.Text="";
             password.Text="";


        }

        protected void txtmobno_TextChanged(object sender, EventArgs e)
        {

        }
    }
}