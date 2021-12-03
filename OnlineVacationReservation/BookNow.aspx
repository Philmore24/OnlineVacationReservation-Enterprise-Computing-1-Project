<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookNow.aspx.cs" Inherits="OnlineVacationReservation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="jumbotron">
        <h1 align="center"><tt>Jamaica Tourist Board</tt></h1>
        <p align="center" class="lead"><i>"Vacations like never before"</i></p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Flights</h2>
            <p>
                The searing smell of jerk over the fire. The swizzle of rum in your glass. No place on earth provides the range of attractions and the 
                cultural diversity that can be found here. No place on earth feels like Jamaica!
            </p>
            <p>
                &nbsp;<asp:Button ID="flightBook" runat="server" CssClass="button" Text="Book now!" OnClick="flightbook" />
            </p>
        </div>
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
            <h2>Cruises</h2>
            <p>
                The searing smell of jerk over the fire. The swizzle of rum in your glass. No place on earth provides the range of attractions and the 
                cultural diversity that can be found here. No place on earth feels like Jamaica!
            </p>
            <p>
                &nbsp;<asp:Button ID="Button2" runat="server" CssClass="button" Text="Book now!" OnClick="Button2_Click" />
            </p>
        </div>
    </div>

</asp:Content>
