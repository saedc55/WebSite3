using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Welcome : System.Web.UI.Page
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
        
        lable1.Text = Session["Email_ID"].ToString();
        
    }
}