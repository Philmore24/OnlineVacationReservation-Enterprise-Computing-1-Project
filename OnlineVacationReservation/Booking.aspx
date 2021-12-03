<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="OnlineVacationReservation.Booking1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="container">
        <div class="form-horizontal">
            <h2>Selected Flight </h2>
            <hr />
            <div class="form-group">

                <table id="Table1" runat="server">
                    <tr>
                        <td style="height: 20px; width: 345px">Flgiht ID</td>
                        <td style="height: 20px; width: 420px">Departing Country </td>
                        <td style="height: 20px; width: 345px">Departing City</td>
                        <td style="height: 20px; width: 420px">Destination Country</td>
                        <td style="height: 20px; width: 345px">Destination City</td>
                        <td style="height: 20px; width: 345px">Departure</td>
                        <td style="height: 20px; width: 345px">Arrival </td>
                        <td style="height: 20px; width: 345px">Duration </td>
                        <td style="height: 20px; width: 345px">Available Seats </td>
                    </tr>
                    <tr>
                        <td style="width: 345px">
                            <asp:Label ID="flightid" runat="server"></asp:Label></td>
                        <td style="width: 420px">
                            <asp:Label ID="DepartCountry" runat="server"></asp:Label></td>
                        <td style="width: 345px">
                            <asp:Label ID="DepartCity" runat="server"></asp:Label></td>
                        <td style="width: 420px">
                            <asp:Label ID="DestiCountry" runat="server"></asp:Label></td>
                        <td style="width: 345px">
                            <asp:Label ID="DestinCity" runat="server"></asp:Label></td>
                        <td style="width: 345px">
                            <asp:Label ID="Depature" runat="server"></asp:Label></td>
                        <td style="width: 345px">
                            <asp:Label ID="Arrival" runat="server"></asp:Label></td>
                        <td style="width: 345px">
                            <asp:Label ID="Duration" runat="server"></asp:Label></td>
                        <td style="width: 345px">
                            <asp:Label ID="Seats" runat="server"></asp:Label></td>
                    </tr>
                </table>

            </div>
        </div>

        <div class="form-horizontal">
            <h2>Booking Detaills </h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Enter your first name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtFname" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Enter your Last name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtLname" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Enter your Phone Number"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtnumber" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Enter your Email"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Number of tickets"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtTicket" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Tickets Class"></asp:Label>
                <div class="col-md-3">

                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Text="Business" Value="Business"></asp:ListItem>
                        <asp:ListItem Text="First Class" Value="First Class"></asp:ListItem>
                        <asp:ListItem Text="Economy" Value="Economy"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Book" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
