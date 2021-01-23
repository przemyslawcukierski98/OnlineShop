using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShop
{
    public partial class Cennik : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataReader dataReader = null;

        protected void Page_Load(object sender, EventArgs e)
        { 
            if (!Page.IsPostBack)
            {
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                connection.Open();
                command.CommandText = "SELECT * FROM Products";
                command.Connection = connection;
                ProductsGridView.DataSource = dataReader;
                ProductsGridView.DataBind();
            }
        }

        protected void ProductsGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(ProductsGridView.SelectedRow.Cells[1].Text);
            string name = ProductsGridView.SelectedRow.Cells[2].Text;
            string price = ProductsGridView.SelectedRow.Cells[3].Text;
            string description = ProductsGridView.SelectedRow.Cells[4].Text;
            string imageUri = "~/Images/Products/" + ProductsGridView.SelectedRow.Cells[5].Text + ".png";

            NameOfProductLabel.Text = name;
            PriceLabel.Text = price + " PLN";
            DescriptionLabel.Text = description;
            CategoriesLabel.Text = GroupDropDown.SelectedValue;
            ProductImage.ImageUrl = imageUri;

            ProductDetailsPanel.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            connection = new SqlConnection(connectionString);
            connection.Open();

            string search = SearchProductTextbox.Text;
            string sqlQuery = "SELECT * FROM Products WHERE Name like '%'+@ProductName+'%'";
            command.CommandText = sqlQuery;
            command.Connection = connection;
            command.Parameters.AddWithValue("ProductName", SearchProductTextbox.Text);
            DataTable dataTable = new DataTable();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
            sqlDataAdapter.Fill(dataTable);

            GridViewPom.DataSource = dataTable;
            GridViewPom.DataBind();
            int id = int.Parse(GridViewPom.Rows[0].Cells[0].Text);
            string name = GridViewPom.Rows[0].Cells[1].Text;
            string price = GridViewPom.Rows[0].Cells[2].Text;
            string description = GridViewPom.Rows[0].Cells[3].Text;
            string imageUri = "~/Images/Products/" + ProductsGridView.Rows[0].Cells[5].Text + ".png";

            NameOfProductLabel.Text = name;
            PriceLabel.Text = price + " PLN";
            DescriptionLabel.Text = description;
            CategoriesLabel.Text = GroupDropDown.SelectedValue;
            ProductImage.ImageUrl = imageUri;

            ProductDetailsPanel.Visible = true;
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session["Zalogowano"] = 0;
            Response.Redirect("Logowanie.aspx");
        }
    }
}