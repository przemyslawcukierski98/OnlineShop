using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShop
{
    public partial class Logowanie : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string login = LoginTextbox.Text;
            string password = PasswordTextbox.Text;

            SqlCommand command = new SqlCommand("Select * from Users where Login='"
                + login.Trim() + "' AND Haslo='" + password.Trim() + "'",
                connection);
            SqlDataReader dataReader = command.ExecuteReader();

            if(dataReader.HasRows)
            {
                Session["Zalogowano"] = 1;
            }
            else
            {
                PasswordValidationLabel.Visible = true;
            }

        }
    }
}