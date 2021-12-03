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
    public partial class Cruise1 : System.Web.UI.Page
    {
        public static string CS = ConfigurationManager.ConnectionStrings["Defaultconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            String Cid = Request.QueryString["Cruise_id"];
            String myquery = "Select * from Cruise WHERE Cruise_id ='" + Cid + "'";
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Cruiseid.Text = ds.Tables[0].Rows[0]["Cruise_id"].ToString();
                DepartCountry.Text = ds.Tables[0].Rows[0]["Departing_Country"].ToString();
                DepartCity.Text = ds.Tables[0].Rows[0]["Departing_City"].ToString();
                DestiCountry.Text = ds.Tables[0].Rows[0]["Destination_Country"].ToString();
                DestinCity.Text = ds.Tables[0].Rows[0]["Destination_City"].ToString();
                CheckIn.Text = ds.Tables[0].Rows[0]["Date_CheckIn"].ToString();
                CheckOut.Text = ds.Tables[0].Rows[0]["Date_CheckOut"].ToString();
                Rooms.Text = ds.Tables[0].Rows[0]["Rooms_Available"].ToString();
            }
            con.Close();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            ServiceReference4.CruiseServiceSoapClient client = new ServiceReference4.CruiseServiceSoapClient();
            int ret = client.CruiseBooking(txtFname.Text, txtLname.Text, txtnumber.Text, txtEmail.Text, Convert.ToInt32(Cruiseid.Text), Convert.ToInt32(txtTicket.Text), RadioButtonList1.SelectedItem.Text);
            if (ret > 0)
            {

                lblMessage.Text = " Cruise Was Booked Successful!!";
                //Response.Redirect("ConfirmBooking.aspx");
            }
            else
            {
                lblMessage.Text = "There Was An Error While Booking Cruise";
            }

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string roomtype;
            int price = 0;


            roomtype = RadioButtonList1.SelectedValue;
            price = BoardingPriceClass(roomtype);
            string Cost = "$" + price.ToString();
            txtPrice.Text = Cost;
        }

        public int BoardingPriceClass(String SeatClass)
        {
            String room = SeatClass;
            int Cost;
            Cost = 0;
            if (room == "Interior")
            {
                Cost = 10000;
            }
            else
            if (room == "Ocean View")
            {
                Cost = 20000;
            }
            else
            if (room == "Balcony")
            {
                Cost = 15000;
            }
            else
                if (room == "Suite")
            {
                Cost = 8000;
            }
            return Cost;
        }
    }
}