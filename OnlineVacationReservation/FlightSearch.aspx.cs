using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace OnlineVacationReservation
{
    public partial class FlightSearch : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ServiceReference2.FlightsSoapClient client = new ServiceReference2.FlightsSoapClient();
       
            GridView1.DataSource = client.searchFlight(txtDCountry.Text, txtDCity.Text, txDECountry.Text, txDECity.Text, Convert.ToDateTime(txtDepartureDate.Text));
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Flight_id = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("Booking.aspx?Flight_id=" + Flight_id);
        }
    }
    
    
}