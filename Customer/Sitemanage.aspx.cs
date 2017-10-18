using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Sitemanage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["Email_ID"] != null)
        {
            String em = Session["Email_ID"].ToString();
            if (em != "saedc@gmail.com")
            {
                Response.Redirect("~/Default");
            }

        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

    }

    protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlDataSource4.Insert();
    }
}