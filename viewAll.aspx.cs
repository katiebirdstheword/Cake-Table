using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace CakeTable
{
    public partial class viewAll : System.Web.UI.Page
    {
        StringBuilder table= new StringBuilder();
        protected void Page_Load (object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["ITD210_08ConnectionString"].ToString();
                conn.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select* from [Cake]";
                cmd.Connection = conn;

                SqlDataReader rd = cmd.ExecuteReader();

                table.Append("<table border = '2'>");
                table.Append("<tr><th>ID</th><th>Cake Name</th><th>Flavor</th><th>Description</th><th>Price</th><th>Created Date</th></tr>");

                if(rd.HasRows)
                {
                    while(rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0] + "</td>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("<td>" + rd[2] + "</td>");
                        table.Append("<td>" + rd[3] + "</td>");
                        table.Append("<td>" + rd[4] + "</td>");
                        table.Append("<td>" + rd[5] + "</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
                conn.Close();
            }

        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}