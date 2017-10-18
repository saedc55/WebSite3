using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_HotelSearch : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectParameters["Hotel_Loaction"].DefaultValue = "%" + TextBox.Text + "%";
      
    }
}