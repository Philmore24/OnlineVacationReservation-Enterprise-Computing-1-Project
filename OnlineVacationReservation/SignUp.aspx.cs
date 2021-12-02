using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace CarsMarket
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSignup_Click(object sender, EventArgs e)
        {
            if (tbFirstName.Text != "" && tbLastName.Text != "" && tbEmail.Text != "" && tbPhoneNumber.Text != "" && tbDOB.Text != "" && tbAddress.Text != "" && tbUsername.Text != "" & tbPass.Text != "" && tbCPass.Text != "")
            {
                if (tbPass.Text == tbCPass.Text)
                {
                    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("insert into Register values('" + tbFirstName.Text + "','" + tbLastName.Text + "','" + tbDOB.Text + "','" + tbPhoneNumber.Text + "','" + tbAddress.Text + "','" + tbEmail.Text + "','" + tbUsername.Text + "','" + tbPass.Text + "')", con);//,'U'
                        //SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Customer]([Customer_ID] ,[FirstName]           ,[LastName]           ,[DOB]           ,[Phone_Number]      ,[Email]           ,[Username]         ,[Address]              ,[Password]) values('" + tbFirstName.Text + "','" + tbLastName.Text + "','" + tbDOB.Text + "','" + tbPhoneNumber.Text + "','" + tbAddress.Text + "','" + tbEmail.Text + "','" + tbUsername.Text + "','" + tbPass.Text + "')", con);//,'U'

                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblMsg.Text = "Registration Successfull";
                        lblMsg.ForeColor = Color.Green;
                        Response.Redirect("Signin.aspx");
                    }
                }
                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Passwords do not match";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All Fields Are Mandatory";
            }
        }
    }
        
}