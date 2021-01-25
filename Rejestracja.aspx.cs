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
            bool flag = false;
            string firstName = ImieTextbox.Text;
            string lastName = NazwiskoTextbox.Text;
            string login = LoginTextbox.Text;
            string password = PasswordTextbox.Text;

            Regex hasNumber = new Regex(@"[0-9]+");
            Regex hasUpperChar = new Regex(@"[A-Z]+");
            bool passwordValidation = hasNumber.IsMatch(password) && hasUpperChar.IsMatch(password);
            bool firstNameIsEmpty = ImieTextbox.Text.Equals("");
            bool lastNameIsEmpty = NazwiskoTextbox.Text.Equals("");
            bool loginIsEmpty = LoginTextbox.Text.Equals("");
            bool passwordIsEmpty = PasswordTextbox.Text.Equals("");
            int lengthOfLogin = LoginTextbox.Text.Length;

            ImieValidationLabel.Visible = false;
            NazwiskoValidationLabel.Visible = false;
            PasswordValidationLabel.Visible = false;
            LoginValidationLabel.Visible = false;
            CorrectValidationLabel.Visible = false;

            if (passwordValidation && lengthOfLogin < 50 && !firstNameIsEmpty && !lastNameIsEmpty 
                && !loginIsEmpty && !passwordIsEmpty)
            {
                CorrectValidationLabel.Text = "Rejestracja przebiegła pomyślnie!";
                CorrectValidationLabel.Visible = true;

                SqlCommand command = new SqlCommand("Insert into Users values ('"
                + firstName + "','" + lastName + "','" + login + "','" + password + "','" + 0 + "')", connection);

                command.ExecuteNonQuery();
                connection.Close();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            if (passwordValidation)
            {
                PasswordValidationLabel.Text = "Hasło musi zawierać przynajmniej jedną cyfrę oraz jedną dużą literę";
                PasswordValidationLabel.Visible = true;
                CorrectValidationLabel.Visible = false;
            }
            if (lengthOfLogin > 50)
            {
                LoginValidationLabel.Text = "Długość loginu nie może być większa niż 50";
                LoginValidationLabel.Visible = true;
                CorrectValidationLabel.Visible = false;
            }
            if(firstNameIsEmpty)
            {
                ImieValidationLabel.Text = "Pole imię nie może pozostać puste";
                ImieValidationLabel.Visible = true;
                CorrectValidationLabel.Visible = false;
            }
            if(lastNameIsEmpty)
            {
                NazwiskoValidationLabel.Text = "Pole nazwisko nie może pozostać puste";
                NazwiskoValidationLabel.Visible = true;
                CorrectValidationLabel.Visible = false;
            }
            if(loginIsEmpty)
            {
                LoginValidationLabel.Text = "Pole login nie może pozostać puste";
                LoginValidationLabel.Visible = true;
                CorrectValidationLabel.Visible = false;
            }
            if(passwordIsEmpty)
            {
                PasswordValidationLabel.Text = "Pole hasło nie może pozostać puste";
                PasswordValidationLabel.Visible = true;
                CorrectValidationLabel.Visible = false;
            }


            ImieTextbox.Text = "";
            NazwiskoTextbox.Text = "";
            LoginTextbox.Text = "";
            PasswordTextbox.Text = "";
        }
    }
}