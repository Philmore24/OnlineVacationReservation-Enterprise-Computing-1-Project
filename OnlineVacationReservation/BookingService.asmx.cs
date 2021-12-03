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
    /// Summary description for BookingService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class BookingService : System.Web.Services.WebService
    {
        public int cusid;
        public static string CS = ConfigurationManager.ConnectionStrings["Defaultconnection"].ConnectionString;


        [WebMethod]
        public int FlightBooking(string FirstName, string LastName, string Phone_Number, string Email, int Flight_ID, int Number_of_Seat, string Class)
        {
            int retRecord = 0;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("FlightBooking", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("FirstName", SqlDbType.VarChar, 50).Value = FirstName;
                    cmd.Parameters.Add("LastName", SqlDbType.VarChar, 50).Value = LastName;
                    cmd.Parameters.Add("Phone_Number", SqlDbType.VarChar, 50).Value = Phone_Number;
                    cmd.Parameters.Add("Email", SqlDbType.VarChar, 50).Value = Email;
                    cmd.Parameters.Add("Flight_ID", SqlDbType.Int).Value = Flight_ID;
                    cmd.Parameters.Add("Number_of_Seat", SqlDbType.Int).Value = Number_of_Seat;
                    cmd.Parameters.Add("Class", SqlDbType.VarChar, 50).Value = Class;





                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            cusid = Convert.ToInt32(dr["Customer_ID"]);
                        }
                    }

                    retRecord = cmd.ExecuteNonQuery();

                }
            }
            retRecord = cusid;
            return retRecord;
        }
    }
}
