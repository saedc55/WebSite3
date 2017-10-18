using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI;
using System.Web.UI.WebControls;
[TestClass]  
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [TestMethod]
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            DataView dView = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (dView.Count == 1)
            {
                Session["Email_ID"] = TextBox1.Text;
                String em = Session["Email_ID"].ToString();
                if (em == "saedc@gmail.com")
                {
                    Response.Redirect("~/Customer/Sitemanage.aspx");
                }
                else
                {
                    Response.Redirect("~/Customer/Welcome.aspx");

                }


            }
            else
            {
                Label3.Text = "Incorrect username or password!";

            }
        }
        catch (SqlException ex)
        {

            Label3.Text = ex.Message;
        }

    }


   
}

public class TestMethodAttribute : Attribute
{
}