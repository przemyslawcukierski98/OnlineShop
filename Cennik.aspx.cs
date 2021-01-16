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
            if(!Page.IsPostBack)
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
        }
    }
}