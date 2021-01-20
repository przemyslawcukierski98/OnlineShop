using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShop
{
    public partial class Rejestracja : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void RegistrationButton_Click(object sender, EventArgs e)
        {
            string firstName = ImieTextbox.Text;
            string lastName = NazwiskoTextbox.Text;
            string login = LoginTextbox.Text;
            string password = PasswordTextbox.Text;

            Regex hasNumber = new Regex(@"[0-9]+");
            Regex hasUpperChar = new Regex(@"[A-Z]+");
            bool passwordValidation = hasNumber.IsMatch(password) && hasUpperChar.IsMatch(password);
            bool firstNameIsEmpty = ImieTextbox.Text.Equals(null);
            bool lastNameIsEmpty = NazwiskoTextbox.Text.Equals(null);
            bool loginIsEmpty = LoginTextbox.Text.Equals(null);
            bool passwordIsEmpty = PasswordTextbox.Text.Equals(null);
            int lengthOfLogin = LoginTextbox.Text.Length;

            if (passwordValidation && lengthOfLogin < 50)
            {
                PasswordValidationLabel.Visible = false;
                LoginValidationLabel.Visible = false;

                SqlCommand command = new SqlCommand("Insert into Users values ('"
                + firstName + "','" + lastName + "','" + login + "','" + password + "','" + 0 + "')", connection);

                command.ExecuteNonQuery();
                connection.Close();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            else if (!passwordValidation)
            {
                PasswordValidationLabel.Text = "Hasło musi zawierać przynajmniej jedną cyfrę oraz jedną dużą literę";
                PasswordValidationLabel.Visible = true;
            }
            else if (lengthOfLogin > 50)
            {
                LoginValidationLabel.Text = "Długość loginu nie może być większa niż 50";
                LoginValidationLabel.Visible = true;
            }
            else if(firstNameIsEmpty)
            {
                ImieValidationLabel.Text = "Pole imię nie może pozostać puste";
                ImieValidationLabel.Visible = true;
            }
            else if(lastNameIsEmpty)
            {
                NazwiskoValidationLabel.Text = "Pole nazwisko nie może pozostać puste";
                NazwiskoValidationLabel.Visible = true;
            }
            else if(loginIsEmpty)
            {
                LoginValidationLabel.Text = "Pole login nie może pozostać puste";
                LoginValidationLabel.Visible = true;
            }
            else if(passwordIsEmpty)
            {
                PasswordValidationLabel.Text = "Pole hasło nie może pozostać puste";
                PasswordValidationLabel.Visible = true;
            }
        }
    }
}