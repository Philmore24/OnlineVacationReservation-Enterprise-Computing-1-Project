using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace OnlineVacationReservation
{
    /// <summary>
    /// Summary description for ConfirmBookingService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ConfirmBookingService : System.Web.Services.WebService
    {
        public static string CS = ConfigurationManager.ConnectionStrings["Defaultconnection"].ConnectionString;

        public int Booking_Receipt(int Flight_ID, int Customer_ID, int Ticket_num, DateTime Booking_date)
        {
            int retRecord = 0;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("Booking_Receipt", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("Flight_ID", SqlDbType.Int).Value = Flight_ID;
                    cmd.Parameters.Add("Customer_ID", SqlDbType.Int).Value = Customer_ID;
                    cmd.Parameters.Add("Ticket_num", SqlDbType.Int).Value = Ticket_num;
                    cmd.Parameters.Add("Booking_date", SqlDbType.DateTime).Value = Booking_date;
                    cmd.Parameters.Add("Flight_ID", SqlDbType.Int).Value = Flight_ID;

                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    retRecord = cmd.ExecuteNonQuery();

                }
            }
            return retRecord;
        }
    }
}
