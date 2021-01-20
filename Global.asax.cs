using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace OnlineShop
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["StartSerwera"] = DateTime.Now.ToString();
            Application["LicznikOdwiedzin"] = 0;
            Application["LiczbaPolaczen"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session.Timeout = 1;
            Session["Zalogowano"] = 0;
            Session["StartSesji"] = DateTime.Now.ToString();
            Application["LicznikOdwiedzin"] = (int)Application["LicznikOdwiedzin"] + 1;
            Application["LiczbaPolaczen"] = (int)Application["LiczbaPolaczen"] + 1;
        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["LiczbaPolaczen"] = (int)Application["LiczbaPolaczen"] - 1;
        }
    }
}
