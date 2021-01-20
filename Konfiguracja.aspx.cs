using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShop
{
    public partial class Konfiguracja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["Zalogowano"] == 0) Response.Redirect("Logowanie.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Zalogowano"] = 0;
            Response.Redirect("Logowanie.aspx");
        }
    }
}