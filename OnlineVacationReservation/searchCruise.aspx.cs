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
    public partial class searchCruise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ServiceReference1.CruiseSoapClient client = new ServiceReference1.CruiseSoapClient();

            GridView1.DataSource = client.searchCruise(txtDCountry.Text, txtDCity.Text, txDECountry.Text, txDECity.Text, Convert.ToDateTime(txtCheckIn.Text), Convert.ToDateTime(txtCheckOut.Text));
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Cruise_id = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("Cruise.aspx?Cruise_id=" + Cruise_id);
        }
    }
}