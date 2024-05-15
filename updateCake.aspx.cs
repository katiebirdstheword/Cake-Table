using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

namespace CakeTable
{
    public partial class updateCake : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                string connString = ConfigurationManager.ConnectionStrings["ITD210_08ConnectionString"].ConnectionString;
                SqlConnection conn = null;
                conn = new SqlConnection(connString);
                conn.Open();

                SqlCommand cmd = new SqlCommand();
                string query1 = "Select [ID], [CakeName] From Cake";


                SqlDataAdapter da = new SqlDataAdapter(query1, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count != 0)
                {
                    CheckBoxList1.DataSource = ds;
                    CheckBoxList1.DataTextField = "ID";
                    CheckBoxList1.DataValueField = "ID";

                    CheckBoxList1.DataBind();


                }
                else
                {

                }
                conn.Close();

            }




        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
        
        protected void btnLookup_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["ITD210_08ConnectionString"].ConnectionString;
            SqlConnection conn = null;
            string ID = "";
            conn = new SqlConnection(connString);
            conn.Open();

            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    ID = CheckBoxList1.Items[i].Value;
                }

            }

            string query = "Select * From [Cake] where ID = ' " + ID + "'";
            SqlCommand cmd = new SqlCommand(query, conn);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {

                txtID.Text = reader[0].ToString();
                txtCakeName.Text = reader[1].ToString();
                txtFlavor.Text = reader[2].ToString();
                txtDescription.Text = reader[3].ToString();
                txtPrice.Text = reader[4].ToString();
                txtCreatedDate.Text = reader[5].ToString();

            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            string ID = txtID.Text.ToString();
            string CakeName = txtCakeName.Text.ToString();
            string Flavor = txtFlavor.Text.ToString();
            string Description = txtDescription.Text.ToString();
            string Price = txtPrice.Text.ToString();
            string CreatedDate = txtCreatedDate.Text.ToString();

            string connString = ConfigurationManager.ConnectionStrings["ITD210_08ConnectionString"].ConnectionString;
            SqlConnection conn = null;
            conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Update [Cake] SET CakeName = '" + CakeName + "',  Flavor = '" + Flavor + "', Description = '" + Description + "', Price = '" + Price + "', CreatedDate = '" + CreatedDate + "' WHERE ID = '" + ID + "'";


            cmd.Connection = conn;
            int rowsAffected = cmd.ExecuteNonQuery();


            if (rowsAffected == 1)
            {

                lbl1.Text = "Success!";
              

            }
            else
            {
                lbl1.Text = "ERROR!";
              
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