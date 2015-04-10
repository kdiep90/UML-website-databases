using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserSubmit_Click(object sender, EventArgs e)
        {
            //Test: Retrieving text from both TextBoxes (Working)
            //lbl1.Text = UserLoginID.Text + UserPassword.Text;
            String userID = this.UserLoginID.Text;

            String userPassword = this.UserPassword.Text;

            String sql = @" 
                SELECT u.user_login_id, u.user_password
                FROM MyUsers u
                WHERE u.user_login_id = " + "'" +userID+ "'AND u.user_password = " + "'" + userPassword + "'";


            String connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);

            using (conn)
            {
                SqlCommand command = new SqlCommand(sql, conn);
                conn.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    Response.Redirect("~/userAdmin.aspx");
                }
                else
                {
                    //Send an error message
                    Console.WriteLine("Wrong ID/Password combination");
                }
            }

        }
    }
}