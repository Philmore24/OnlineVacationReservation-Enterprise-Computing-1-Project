using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVacationReservation
{
    public partial class SearchFlight : System.Web.UI.Page
    {
        public static String ConStr = ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_Name"] == null)
            {
                Response.Redirect("ErrorPage.aspx");
            }
            Book_Button.Visible = false;
        }

        public static DataTable SearchD(string From, string To, string Date, int Seats)
        {
            SqlConnection connect = new SqlConnection(ConStr);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "Search_Flight";
            command.Connection = connect;

            connect.Open();
            command.Parameters.AddWithValue("@leaving_from", From);
            command.Parameters.AddWithValue("@going_to", To);
            command.Parameters.AddWithValue("@departure_date", Date);
            command.Parameters.AddWithValue("@seat", Seats);

            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            connect.Close();
            return dt;
        }
        public static DataTable SearchB(string From, string To, string Date, int Seats)
        {
            try
            {

                DataTable dt = new DataTable();
                return dt = SearchD(From, To, Date, Seats);
            }
            catch (Exception Excptn_SearchB)
            {
                throw Excptn_SearchB;
            }

        }

        protected void Search1_Button_Click(object sender, EventArgs e)
        {
            try
            {
                string From = City_DropDownList1.Text;
                string To = City_DropDownList2.Text;
                DateTime Cur_Date = DateTime.Now;
                string depart_date = Date_TextBox.Text;
                string Date = DateTime.ParseExact(depart_date, "dd-MM-yyyy", null).ToString("yyyy-MM-dd");
                DateTime Entered_Date = Convert.ToDateTime(Date);
                string Arrival_date = Date_TextBox1.Text;
                string Date1 = DateTime.ParseExact(Arrival_date, "dd-MM-yyyy", null).ToString("yyyy-MM-dd");
                DateTime Entered_Date1 = Convert.ToDateTime(Date);
                Session["Date_journey"] = Date.ToString();

                Date_Label.Visible = false;
                Seat_Label.Visible = false;
                NoFlight_Label.Visible = false;
                Exception_Label.Visible = false;

                int count = 0;
                int Seats = Convert.ToInt32(Seats_TextBox.Text);
                if (Entered_Date <= Cur_Date)
                {

                    count++;
                    Date_Label.Visible = true;
                    Date_Label.Text = "Not allowed to enter past date";
                }

                if (Seats > 20)
                {
                    Book_Button.Visible = false;
                    Search_GridView.Visible = false;                             //Seats more than 20 validation
                    Seat_Label.Visible = true;
                    Seat_Label.Text = "Not allowed to book more than 20 tickets";
                }

                else if (Seats <= 0)
                {
                    Book_Button.Visible = false;
                    Search_GridView.Visible = false;                            //Seats Less or equal zero validation
                    Seat_Label.Visible = true;
                    Seat_Label.Text = "Please enter valid number of seat";
                }
                Session["No_Passengers"] = Seats.ToString();

                DataTable dt = new DataTable();

                dt = SearchB(From, To, Date, Seats);


                if (dt != null && Seats <= 20 && Seats > 0)
                {
                    if (dt.Rows.Count > 0)
                    {
                        Book_Button.Visible = false;
                        Exception_Label.Visible = false;

                        Search_GridView.Visible = true;
                        Search_GridView.DataSource = dt;
                        Search_GridView.DataBind();

                    }
                    else if (City_DropDownList1.SelectedValue == "--Select--")
                    {
                        Search_GridView.Visible = false;
                        NoFlight_Label.Visible = true;
                        NoFlight_Label.Text = "Please select city";
                    }
                    else if (City_DropDownList2.SelectedValue == "--Select--")
                    {
                        NoFlight_Label.Visible = true;
                        Search_GridView.Visible = false;
                        NoFlight_Label.Text = "Please select city";
                    }
                    else if (City_DropDownList1.SelectedValue == City_DropDownList2.SelectedValue)
                    {
                        Search_GridView.Visible = false;
                        NoFlight_Label.Visible = true;
                        NoFlight_Label.Text = "Please enter the different city name";
                    }

                    else
                    {
                        Book_Button.Visible = false;

                        Search_GridView.Visible = false;
                        NoFlight_Label.Visible = true;
                        if (count == 0)
                        {
                            NoFlight_Label.Text = "No Flights Available... Try for different date";
                        }

                    }

                }

            }
            catch (Exception searchE)
            {

                Book_Button.Visible = false;

                Exception_Label.Visible = true;
                NoFlight_Label.Visible = false;
                Search_GridView.Visible = false;

                Exception_Label.Text = "Please Enter Valid Data";

            }
        }

        protected void rbSelector_CheckedChanged(object sender, System.EventArgs e)
        {

            foreach (GridViewRow oldrow in Search_GridView.Rows)
            {
                ((RadioButton)oldrow.FindControl("Book_RadioButton")).Checked = false;

            }

            RadioButton rb = (RadioButton)sender;
            GridViewRow row = (GridViewRow)rb.NamingContainer;
            ((RadioButton)row.FindControl("Book_RadioButton")).Checked = true;

            Book_Button.Visible = true;
        }






    }    
}