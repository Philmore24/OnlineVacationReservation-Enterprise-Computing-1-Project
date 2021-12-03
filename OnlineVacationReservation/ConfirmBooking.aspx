<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="OnlineVacationReservation.ConfirmBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div class="container">
        <div class="form-horizontal">
            <h2>Confirm Booking Details.</h2>
            <p>Please review and confirm booking details.</p>
            <p>
                Customer ID:
                  <asp:Label ID="CusID" runat="server"></asp:Label>
            </p>
            <p>
                Flight ID:
                  <asp:Label ID="FlightID" runat="server"></asp:Label>
            </p>
            <p>
                Ticket ID :<asp:Label ID="TicketID" runat="server"></asp:Label>
            </p>
            <p>
                Date :<asp:Label ID="BookDate" runat="server"></asp:Label>
            </p>
            <p>
                Departing Country:
                  <asp:TextBox ID="DepartCountry" runat="server"></asp:TextBox>
            </p>
            <p>
                Departing City:&nbsp;
                  <asp:TextBox ID="DepartCity" runat="server"></asp:TextBox>
            </p>
            <p>
                Destination Country:<asp:TextBox ID="desCountry" runat="server"></asp:TextBox>
            </p>
            <p>
                Destination City:<asp:TextBox ID="desCity" runat="server"></asp:TextBox>
            </p>
            <p>
                First Name:<asp:TextBox ID="fName" runat="server"></asp:TextBox>
            </p>
            <p>
                Last Name:<asp:TextBox ID="lName" runat="server"></asp:TextBox>
            </p>
            <p>
                Phone Number:
                  <asp:TextBox ID="phoneNum" runat="server"></asp:TextBox>
            </p>
            <p>
                Email:<asp:TextBox ID="email" runat="server"></asp:TextBox>
            </p>
            <p>
                Number of Seats:
                  <asp:TextBox ID="numSeats" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Text="Business" Value="Business"></asp:ListItem>
                    <asp:ListItem Text="First Class" Value="First Class"></asp:ListItem>
                    <asp:ListItem Text="Economy" Value="Economy"></asp:ListItem>
                </asp:RadioButtonList>
            <p>
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                    <p>
                        &nbsp;
                    </p>
                    <p>
                        <asp:Button ID="confirmBook" runat="server" Text="Confirm" OnClick="confirmBook_Click" />
                    </p>
                    <p>
                        &nbsp;
                    </p>
                    <p>
                        &nbsp;
                    </p>
                </div>
        </div>
    </div>
</asp:Content>
