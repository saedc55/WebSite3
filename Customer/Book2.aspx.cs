using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Book2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        Random random = new Random();
        int num = random.Next(1000, 9999);
        Label1.Text = Convert.ToString(num);

    }
}