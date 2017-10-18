using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  


  
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
            Label4.Text = "Your registration succeeded";
        }
        catch (Exception ex)
        {
            Label4.Text = "Your Email Exist";
        }
    }
}

   
