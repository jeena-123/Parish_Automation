﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parish_automation.classes;
using System.Data;

namespace Parish_automation.AdminModule
{
    public partial class ExpenseRegister : System.Web.UI.Page
    {
        Associationmemberclass exp = new Associationmemberclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exp.Expensedate = expensedate.Text;
            exp.Expensedescription = amountdes.Text;
            exp.Expenseamount = expenseamount.Text;
            exp.InsertExpense();
            expensedate.Text = "";
            amountdes.SelectedIndex = 0;
            expenseamount.Text="";
        }
    }
}