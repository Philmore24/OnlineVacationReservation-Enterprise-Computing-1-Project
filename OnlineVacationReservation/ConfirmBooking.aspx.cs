using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineVacationReservation
{
    public partial class ConfirmBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Fid = Request.QueryString["Customer_id"];
            CusID.Text = Fid;

            //Session value is assign on the text box  

            fName.Text = Session["FlightFname"].ToString();
            lName.Text = Session["FlightLname"].ToString();
            email.Text = Session["FlightEmail"].ToString();
            phoneNum.Text = Session["FlightPhone#"].ToString();
            numSeats.Text = Session["FlightSeat"].ToString();





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

        protected void confirmBook_Click(object sender, EventArgs e)
        {
            ServiceReference5.ConfirmBookingServiceSoapClient client = new ServiceReference5.ConfirmBookingServiceSoapClient();
            //int ret = client.Booking_Receipt(Convert.ToInt32(FlightID.Text), Convert.ToInt32(CusID.Text), Convert.ToInt32(TicketID.Text), Convert.ToDateTime(BookDate.Text));
            //   if (ret > 0)
            {

                //lblMessage.Text = " Flight Was Booked Successful!!";
                //     Response.Redirect("ConfirmBooking.aspx?Customer_id=" + ret);
                //Response.Redirect("ConfirmBooking.aspx");
                //  }
                //  else
                {
                    //lblMessage.Text = "There Was An Error While Booking Flight";
                }
            }
        }
    }
}