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
    /// Summary description for CruiseService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CruiseService : System.Web.Services.WebService
    {
        public static string CS = ConfigurationManager.ConnectionStrings["Defaultconnection"].ConnectionString;

        [WebMethod]
        public int CruiseBooking(string FirstName, string LastName, string Phone_Number, string Email, int Cruise_ID, int Number_of_rooms, string Room)
        {
            int retRecord = 0;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("CruiseBooking", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("FirstName", SqlDbType.VarChar, 50).Value = FirstName;
                    cmd.Parameters.Add("LastName", SqlDbType.VarChar, 50).Value = LastName;
                    cmd.Parameters.Add("Phone_Number", SqlDbType.VarChar, 50).Value = Phone_Number;
                    cmd.Parameters.Add("Email", SqlDbType.VarChar, 50).Value = Email;
                    cmd.Parameters.Add("Cruise_ID", SqlDbType.Int).Value = Cruise_ID;
                    cmd.Parameters.Add("Number_of_rooms", SqlDbType.Int).Value = Number_of_rooms;
                    cmd.Parameters.Add("Room", SqlDbType.VarChar, 50).Value = Room;


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
