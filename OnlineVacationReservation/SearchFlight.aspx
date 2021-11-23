<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchFlight.aspx.cs" Inherits="OnlineVacationReservation.SearchFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header runat="server">
        <script>
            $(function () {
                $("#Date_TextBox").datepicker({
                    dateFormat: 'dd-mm-yy',
                    changeMonth: true,
                    changeYear: true,
                    minDate: "0D",

                });
            });
        </script>
    </header>

  <div>
        <table style="width: 1055px; height: 149px; margin-bottom: 250px;">
            <tr>
                <td colspan="10" style="line-height: 35px; font-size: 35px; font-family: 'Times New Roman', Times, serif; height: 91px;">Search Your Fligth Here
                    <asp:Image ID="SearchHere_Image" runat="server" ImageUrl="~/Images/ClickHere.gif" Height="52px" Width="125px" /></td>
            </tr>
            <tr>
                <td style="font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">From</td>
                <td style="font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">To </td>
                <td style="font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Departure Date</td>
                <td style="font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Arrival Date</td>
                <td style="font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Number of Seats to Book</td>
                <td rowspan="2">
                    <asp:Button ID="Search1_Button" runat="server" Text="Search"  Height="27px" Width="64px" OnClick="Search1_Button_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="City_DropDownList1" runat="server" Width="128px">
                        <asp:ListItem Value="-1">--Select--</asp:ListItem>
                        <asp:ListItem>Country: Jamaica & City: Montego Bay</asp:ListItem>
                        <asp:ListItem>Country: USA & City: Washington DC</asp:ListItem>
                        <asp:ListItem>Country: Cuba & City: Havana</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="City_DropDownList2" runat="server" Height="22px" Width="110px">
                        <asp:ListItem Value="-1">--Select--</asp:ListItem>
                        <asp:ListItem>Country: Jamaica & City: Montego Bay</asp:ListItem>
                        <asp:ListItem>Country: USA & City: Washington DC</asp:ListItem>
                        <asp:ListItem>Country: Cuba & City: Havana</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="Date_TextBox" runat="server" placeholder="DD-MM-YYYY" Height="20px" Width="180px"></asp:TextBox></td>
                 <td>
                    <asp:TextBox ID="Date_TextBox1" runat="server" placeholder="DD-MM-YYYY" Height="20px" Width="180px"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="Seats_TextBox" runat="server" TextMode="Number" placeholder="1-20" Height="20px" Width="180px"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>

                    <asp:Label ID="Date_Label" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>

                    <asp:RequiredFieldValidator ID="RFVDate" runat="server" ControlToValidate="Date_TextBox" ErrorMessage="Enter the Departure date" ForeColor="Red" Font-Size="Large" Display="Dynamic"></asp:RequiredFieldValidator></td>
                <td>

                    <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Date_TextBox" ErrorMessage="Enter the Arrival date" ForeColor="Red" Font-Size="Large" Display="Dynamic"></asp:RequiredFieldValidator></td>
                <td>

                    <asp:Label ID="Seat_Label" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>

                    <asp:RequiredFieldValidator ID="RFVSeats" runat="server" ControlToValidate="Seats_TextBox" ErrorMessage="Enter The Seats to Book" Style="color: #FF0000" Font-Size="Large" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="6">

                    <asp:Label ID="Exception_Label" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>

                    <asp:GridView ID="Search_GridView" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="1041px" AutoGenerateColumns="False" Height="299px" Visible="False">
                        <Columns>

                            <asp:BoundField DataField="Flight_Id" HeaderText="Flight ID" SortExpression="Flight_id" />
                            <asp:BoundField DataField="Airline_Name" HeaderText="Airline Name" SortExpression="airline_name" />
                            <asp:BoundField DataField="From_city" HeaderText="Source" SortExpression="city" />
                            <asp:BoundField DataField="To_City" HeaderText="Destination" SortExpression="city" />
                            <asp:BoundField DataField="Fare" HeaderText="Fare" ReadOnly="True" SortExpression="fare" />

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:RadioButton ID="Book_RadioButton" runat="server" AutoPostBack="true" OnCheckedChanged="rbSelector_CheckedChanged" Text="BOOK" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />

                    </asp:GridView>
                    <center><h3>
                        <asp:Label ID="NoFlight_Label" runat="server" ForeColor="#FF9900" Visible="False" style="text-align: center; color: #CC0066;"></asp:Label></h3></center>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Button ID="Book_Button" runat="server" OnClick="Book_Button_Click" Text="BOOK" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="46px" Width="126px" Style="border-radius: 20px;" />

                </td>
            </tr>
        </table>
  </div>
</asp:Content>
