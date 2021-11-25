<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TESTdatabase.aspx.cs" Inherits="OnlineVacationReservation.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Flight_id" DataSourceID="SqlDataSource1" Height="122px" Width="391px">
        <Columns>
            <asp:BoundField DataField="Flight_id" HeaderText="Flight_id" InsertVisible="False" ReadOnly="True" SortExpression="Flight_id" />
            <asp:BoundField DataField="Departing_Country" HeaderText="Departing_Country" SortExpression="Departing_Country" />
            <asp:BoundField DataField="Departing_City" HeaderText="Departing_City" SortExpression="Departing_City" />
            <asp:BoundField DataField="Destination_Country" HeaderText="Destination_Country" SortExpression="Destination_Country" />
            <asp:BoundField DataField="Destination_City" HeaderText="Destination_City" SortExpression="Destination_City" />
            <asp:BoundField DataField="Departure" HeaderText="Departure" SortExpression="Departure" />
            <asp:BoundField DataField="Arrival" HeaderText="Arrival" SortExpression="Arrival" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:BoundField DataField="Seats_Available" HeaderText="Seats_Available" SortExpression="Seats_Available" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Defaultconnection %>" SelectCommand="SELECT * FROM [Flight]"></asp:SqlDataSource>
</asp:Content>
