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
    /// Summary description for Cruise
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Cruise : System.Web.Services.WebService
    {
        public static string CS = ConfigurationManager.ConnectionStrings["Defaultconnection"].ConnectionString;

        [WebMethod]
        public DataSet searchCruise(string Departing_Country, string Departing_City, string Destination_Country, string Destination_City, DateTime Date_CheckIn, DateTime Date_CheckOut)
        {
            DataSet ds = new DataSet();

            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("searchCruise", con)) 
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("Departing_Country", SqlDbType.VarChar, 50).Value = Departing_Country;
                    cmd.Parameters.Add("Departing_City", SqlDbType.VarChar, 50).Value = Departing_City;
                    cmd.Parameters.Add("Destination_Country", SqlDbType.VarChar, 50).Value = Destination_Country;
                    cmd.Parameters.Add("Destination_City", SqlDbType.VarChar, 50).Value = Destination_City;
                    cmd.Parameters.Add("Date_CheckIn", SqlDbType.DateTime).Value = Date_CheckIn;
                    cmd.Parameters.Add("Date_CheckOut", SqlDbType.DateTime).Value = Date_CheckOut;

                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = cmd;
                    sda.Fill(ds);
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                    }


                }
            }

            return ds;
        }

    }
}
