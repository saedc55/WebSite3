using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_FlightSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email_ID"] != null)
        {

        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {
       
        SqlDataSource1.SelectParameters["Destination"].DefaultValue = "%" + searchtext2.Text + "%";
        SqlDataSource1.SelectParameters["Source"].DefaultValue = "%" + searchtext1.Text + "%";
    }

   
}