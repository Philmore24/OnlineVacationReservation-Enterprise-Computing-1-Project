using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineVacationReservation
{
    public partial class FlightReceipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source = PHILMORE\SQLEXPRESS; Initial Catalog = Online_Vacation_Reservation; Integrated Security = True");
            String sql = "exec View_Receipt '" + TextBox1.Text + "'";

            SqlCommand cmd = new SqlCommand(sql, cn);
            cn.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    BookingRef.Text = dr["Booking_Ref"].ToString();
                    firstname.Text = dr["FirstName"].ToString();
                    Fnmae.Text = dr["FirstName"].ToString();
                    lastname.Text = dr["LastName"].ToString();
                    Lname.Text = dr["LastName"].ToString();
                    flightid.Text = dr["Flight_ID"].ToString();
                    CustomerID.Text = dr["Customer_id"].ToString();
                    bookingDate.Text = dr["Booking_date"].ToString();

                    TotalPrice.Text = Math.Round(decimal.Parse(dr["Total_cost"].ToString()), 2).ToString();
                    //dr["Total_cost"].ToString("c"); 
                    DepartCountry.Text = dr["Departing_Country"].ToString();
                    DepartCity.Text = dr["Departing_City"].ToString();
                    DestinCountry.Text = dr["Destination_Country"].ToString();
                    DestinCity.Text = dr["Destination_City"].ToString();
                    Duration.Text = dr["Duration"].ToString();
                    Class.Text = dr["Class"].ToString();
                    NumofSeat.Text = dr["Number_of_Seat"].ToString();
                    TicketNumber.Text = dr["Ticket_no"].ToString();
                    arrivaldate.Text = dr["Arrival"].ToString();
                    DepartDate.Text = dr["Departure"].ToString();

                }

            }


        }
    }
}