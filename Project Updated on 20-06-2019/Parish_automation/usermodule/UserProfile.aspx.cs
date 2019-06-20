using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation.classes;
using System.Data;

namespace Parish_automation.usermodule
{
    public partial class UserProfile : System.Web.UI.Page
    {
        UserProfileClass obj = new UserProfileClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Label1.Text = Session["user"].ToString();
                obj.Id = Session["user"].ToString();
                obj.Namehead = id1.Text;
                obj.Fami = addr.Text;
                obj.Mobilenumb = mob.Text;
                obj.Prayergroup = pyr.Text;
            
                obj.ExecuteSelect();
                DataTable dt1 = new DataTable();
                dt1 = obj.ExecuteSelect();
                if (dt1.Rows.Count > 0)
                {
                    id1.Text = Convert.ToString(dt1.Rows[0][0]);
                    addr.Text = Convert.ToString(dt1.Rows[0][1]);
                    mob.Text = Convert.ToString(dt1.Rows[0][2]);
                    pyr.Text = Convert.ToString(dt1.Rows[0][3]);
                imgupload.ImageUrl=dt1.Rows[0]["image"].ToString();
                
            }
           
            DataTable dtReg = new DataTable();
                dtReg = obj.Execute_ViewData();
                if (dtReg.Rows.Count > 0)
                {
                    GridView1.DataSource = dtReg;
                    GridView1.DataBind();
                }
           
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
