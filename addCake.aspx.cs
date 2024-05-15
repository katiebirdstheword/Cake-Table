using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CakeTable
{
    public partial class addCake : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            string CakeName = txtCakeName.Text; ToString();
            string Flavor = txtFlavor.Text; ToString();
            string Description = txtDescription.Text; ToString();
            string Price = txtPrice.Text; ToString();
            string CreatedDate = txtCreatedDate.Text; ToString();

            string connString = ConfigurationManager.ConnectionStrings["ITD210_08ConnectionString"].ConnectionString;
            SqlConnection conn = null;
            conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into [Cake](CakeName, Flavor, Description, Price, CreatedDate) Values ('" + CakeName + "','" + Flavor + "','" + Description + "','" + Price + "','" + CreatedDate + "')";

            cmd.Connection = conn;
            int rowsAffected = cmd.ExecuteNonQuery();


            if (rowsAffected == 1)
            {
                lbl1.Text = "Cake Added";
            }
            else
            {
                lbl1.Text = "Error";
            }
            if (rowsAffected == 1)
            {

                lbl1.CssClass = "alert alert-success";


            }
            else
            {
                lbl1.CssClass = "alert alert-danger";

            }


            conn.Close();
           


        }
    }
}