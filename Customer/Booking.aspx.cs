using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Booking : System.Web.UI.Page
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
    protected void click(object sender, EventArgs e)
    {

        GridViewRow grdvr = (GridViewRow)((sender as Button).NamingContainer);
        Response.Redirect("Book2.aspx?Flight_Number=" + GridView1.DataKeys[grdvr.RowIndex].Value.ToString());

    }
    protected void click2(object sender, EventArgs e)
    {

        GridViewRow grdvr1 = (GridViewRow)((sender as Button).NamingContainer);
        Response.Redirect("Hotel1.aspx?Hotel_ID=" + GridView1.DataKeys[grdvr1.RowIndex].Value.ToString());

    }
    protected void click3(object sender, EventArgs e)
    {

        GridViewRow grdvr = (GridViewRow)((sender as Button).NamingContainer);
        Response.Redirect("Flight.aspx?Flight_Number=" + GridView1.DataKeys[grdvr.RowIndex].Value.ToString());

    }



}