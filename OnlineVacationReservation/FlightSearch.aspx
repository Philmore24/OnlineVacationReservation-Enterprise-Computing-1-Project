<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FlightSearch.aspx.cs" Inherits="OnlineVacationReservation.FlightSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    
    <div  class="container">
        <div class="form-horizontal">
            <h2> Search For Your Fligth Here </h2>
            <hr />
            <div class="form-group">
               <h2> From </h2>
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" font-size="15px" Text="Departing Country"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDCountry" CssClass="form-control" runat="server"></asp:TextBox>
                   
                </div>
            </div>


            <div class="form-group">
               
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" font-size="15px" Text="Departing City"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDCity" CssClass="form-control" runat="server"></asp:TextBox>
                   
                </div>
            </div>
            <h2> To </h2>
             <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label"  font-size="15px" Text="Destination Country"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txDECountry" CssClass="form-control" runat="server"></asp:TextBox>
                   
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label"  font-size="15px" Text="Destination City"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txDECity" CssClass="form-control" runat="server"></asp:TextBox>
                   
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label"  font-size="15px" Text="Departure Date and Time"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDepartureDate" CssClass="form-control" placeholder="YYYY-MM-DD HH:MM" runat="server" TextMode="DateTime"></asp:TextBox>
                   
                </div>
            </div>


            <div class="form-group">
             <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnSearch" runat="server" Text="SEARCH" CssClass="btn btn-default" OnClick="btnSearch_Click" /> 
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </div>
            </div>
        </div>
        <hr />
        <div>
            <asp:GridView ID="GridView1" runat="server" Font-Size="Large" EmptyDataText="Sorry No Flights Available For The Specifying Dastination" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

                <Columns>
                            
                        <asp:CommandField HeaderText="Book Now" ShowHeader="True" ShowSelectButton="True" />
                            
                        </Columns>
                </asp:GridView>
               
        </div>
        </div>
</asp:Content>
