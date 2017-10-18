using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void click2(object sender, EventArgs e)
    {

        GridViewRow grdvr1 = (GridViewRow)((sender as Button).NamingContainer);
        Response.Redirect("Hotel1.aspx?Hotel_ID=" + GridView2.DataKeys[grdvr1.RowIndex].Value.ToString());

    }
}