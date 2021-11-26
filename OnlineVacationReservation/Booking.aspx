<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="OnlineVacationReservation.Booking1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="text-left">Flight Selected </h2>
    <div>

        <table class="nav-justified" style="width: 34%; height: 316px">
            <tr>
                <td style="width: 174px">Flgiht ID :</td>
                <td class="modal-sm" style="width: 345px">
                    <asp:TextBox ID="flightid" runat="server" Height="17px" Width="189px" style="font-size: medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Departing Country:</td>
                <td class="modal-sm" style="width: 345px">
                    <asp:TextBox ID="DepartCountry" runat="server" Height="17px" Width="189px" style="font-size: medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Departing City:</td>
                <td class="modal-sm" style="width: 345px">
                    <asp:TextBox ID="DepartCity" runat="server" Height="17px" Width="189px" style="font-size: medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Destination Country:</td>
                <td class="modal-sm" style="width: 345px">
                    <asp:TextBox ID="DestiCountry" runat="server" Height="17px" Width="189px" style="font-size: medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Destination City:</td>
                <td class="modal-sm" style="width: 345px">
                    <asp:TextBox ID="DestinCity" runat="server" Height="17px" Width="189px" style="font-size: medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Departure&nbsp; :</td>
                <td class="modal-sm" style="width: 345px">
                    <asp:TextBox ID="Depature" runat="server" Height="17px" Width="189px" style="font-size: medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Arrival :</td>
                <td class="modal-sm" style="width: 345px">
                    <asp:TextBox ID="Arrival" runat="server" Height="17px" Width="189px" style="font-size: medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Duration :</td>
                <td class="modal-sm" style="width: 345px">
                    <asp:TextBox ID="Duration" runat="server" Height="17px" Width="189px" style="font-size: medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Seats Available</td>
                <td class="modal-sm" style="width: 345px">
                    <asp:TextBox ID="Seats" runat="server" Height="17px" Width="189px" style="font-size: medium"></asp:TextBox>
                </td>
            </tr>
        </table>

    </div>

</asp:Content>
