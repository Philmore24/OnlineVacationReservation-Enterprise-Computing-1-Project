using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace OnlineVacationReservation
{
    public partial class Booking1 : System.Web.UI.Page
    {
        public static string CS = ConfigurationManager.ConnectionStrings["Defaultconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            //String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineVaction.mdf;Integrated Security=True";
            String Fid = Request.QueryString["Flight_id"];
            String myquery = "Select * from Flight WHERE Flight_id ='" + Fid + "'";
            SqlConnection con = new SqlConnection(CS);
            String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineVaction.mdf;Integrated Security=True";
            String Fid = Request.QueryString["Flight_id"];
            String myquery = "Select * from Flight WHERE Flight_id ='" + Fid + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                flightid.Text = ds.Tables[0].Rows[0]["Flight_id"].ToString();
                DepartCountry.Text = ds.Tables[0].Rows[0]["Departing_Country"].ToString();
                DepartCity.Text = ds.Tables[0].Rows[0]["Departing_City"].ToString();
                DestiCountry.Text = ds.Tables[0].Rows[0]["Destination_Country"].ToString();
                DestinCity.Text = ds.Tables[0].Rows[0]["Destination_City"].ToString();
                Depature.Text = ds.Tables[0].Rows[0]["Departure"].ToString();
                Arrival.Text = ds.Tables[0].Rows[0]["Arrival"].ToString();
                Duration.Text = ds.Tables[0].Rows[0]["Duration"].ToString();
                Seats.Text = ds.Tables[0].Rows[0]["Seats_Available"].ToString();
            }
            con.Close();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            ServiceReference3.BookingServiceSoapClient client = new ServiceReference3.BookingServiceSoapClient();
            int ret = client.FlightBooking(txtFname.Text, txtLname.Text, txtnumber.Text, txtEmail.Text, Convert.ToInt32(flightid.Text), Convert.ToInt32(txtTicket.Text), RadioButtonList1.SelectedItem.Text );
            if (ret > 0)
            {
                
                lblMessage.Text = " Flight Was Booked Successful!!";
                //Response.Redirect("ConfirmBooking.aspx");
            }
            else 
            {
                lblMessage.Text = "There Was An Error While Booking Flight";
            }
            
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                string style;
                int price = 0;



                style = RadioButtonList1.SelectedValue;
                price = TicketPriceClass(style);
                string Cost = "$" + price.ToString();
                txtPrice.Text = Cost;
           

        }

        public int TicketPriceClass(String SeatClass)
        {
            String SeatC = SeatClass;
            int Cost;
            Cost = 0;
            if (SeatC == "Business")
            {
                Cost = 10000;
            }
            else
            if (SeatC == "First Class")
            {
                Cost = 20000;
            }
            else
            if (SeatC == "Economy")
            {
                Cost = 15000;
            }
            return Cost;
        }

    }
}