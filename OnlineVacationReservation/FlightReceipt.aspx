<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FlightReceipt.aspx.cs" Inherits="OnlineVacationReservation.FlightReceipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

    </div>
    <div>
        <br />
        <table cellspacing="0" cellpadding="0" width="100%" style="border: 1px solid #000; max-width: 80%; margin: 0 auto; font-family: 'Montserrat', sans-serif; padding: 0 20px;">
            <thead>
                <tr>
                    <th style="padding: 20px 0 20px 15px; text-align: left; font-weight: 400; border-bottom: 1px solid #ccc;">
                        <h1 style="color: #5191fa; margin: 0 0 5px; text-transform: uppercase; font-size: 35px;">Itinerary-Ticket</h1>
                        <p style="margin: 0; font-size: 18px;">
                            Booking Ref:
                            <asp:Label ID="BookingRef" runat="server"></asp:Label>
                        </p>
                        <p style="margin: 0; font-size: 18px;">
                            Booking Date:
                            <asp:Label ID="bookingDate" runat="server"></asp:Label>
                        </p>
                    </th>
                    <th align="right" style="padding-right: 15px; border-bottom: 1px solid #ccc;">
                        <img src="image/jtb-logo.png" alt="JTB">
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="2" style="padding: 15px 15px 20px; font-size: 16px;">
                        <p style="font-size: 20px; margin: 0 0 5px;">
                            Dear 
                            <asp:Label ID="firstname" runat="server"></asp:Label>
                            &nbsp;<asp:Label ID="lastname" runat="server"></asp:Label>
                            ,
                        </p>
                        <p style="font-size: 16px; margin: 0;">Congratulations, Your ticket has been booked successfully.</p>
                    </td>
                </tr>
                <!--Departure Flight Details Start-->
                <tr>
                    <td colspan="2">
                        <h4 style="font-size: 9px; background-color: #3782fb; text-align: center; padding: 5px 15px; color: #fff; font-weight: 400; margin: 10px 0 0px; letter-spacing: 1px;">--</h4>
                    </td>
                </tr>
                <tr>
                    <td style="padding-right: 15px; padding-top: 15px;" colspan="2">
                        <h3 style="text-transform: uppercase; margin: 0 0 5px;">Flight Details:</h3>
                    </td>
                </tr>
                <!--Departure Flight Details Start-->
                <tr>
                    <td colspan="2">
                        <h4 style="font-size: 16px; background-color: #3782fb; text-align: center; padding: 5px 15px; color: #fff; font-weight: 400; margin: 10px 0 0px; letter-spacing: 1px;">Depature Date/Time :
                            <asp:Label ID="DepartDate" runat="server"></asp:Label></h4>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 0;">
                        <table cellpadding="0" cellspacing="0" width="100%" style="border-top: 1px solid #ccc; padding: 15px; border-bottom: 1px solid #ccc">
                            <tbody>
                                <tr>
                                    <td style="font-size: 18px; width: 25%;">
                                        <p style="margin: 5px 0; font-weight: 600; font-size: 18px; text-transform: uppercase;">Flight ID</p>
                                        <p style="margin: 5px 0; font-size: 18px;">
                                            <asp:Label ID="flightid" runat="server" Style="font-size: 16px"></asp:Label>
                                        </p>

                                    </td>
                                    <td style="width: 25%; text-align: right; padding: 0 5px;">
                                        <p style="margin: 5px 0; font-weight: 600; font-size: 18px; text-transform: uppercase;">Depart Country</p>
                                        <p style="margin: 5px 0; font-size: 18px;">
                                            <asp:Label ID="DepartCountry" runat="server" Style="font-size: 16px"></asp:Label>
                                        </p>
                                    </td>
                                    <td style="width: 25%; text-align: center;">
                                        <img src="image/depart.svg" style="width: 20%;">
                                    </td>
                                    <td style="width: 25%; padding: 0 5px;">
                                        <p style="margin: 5px 0; font-weight: 600; font-size: 18px; text-transform: uppercase;">Depart City</p>
                                        <p style="margin: 5px 0; font-size: 18px;">
                                            <asp:Label ID="DepartCity" runat="server" Style="font-size: 16px"></asp:Label>
                                        </p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>

                <!--Connection Flight End-->
                <tr>
                    <td colspan="2">
                        <h4 style="font-size: 16px; background-color: #3782fb; text-align: center; padding: 5px 15px; color: #fff; font-weight: 400; margin: 10px 0 0px; letter-spacing: 1px;">Arrival Date/Time :
                            <asp:Label ID="arrivaldate" runat="server"></asp:Label></h4>
                    </td>
                </tr>
                <td colspan="2" style="padding: 0;">
                    <table cellpadding="0" cellspacing="0" width="100%" style="border-top: 1px solid #ccc; padding: 15px; border-bottom: 1px solid #ccc">
                        <tbody>
                            <!--Departure Flight Details Start-->

                            <tr>
                                <td style="font-size: 18px; width: 25%;">
                                    <p style="margin: 5px 0; font-weight: 600; font-size: 18px; text-transform: uppercase;">Duration</p>
                                    <p style="margin: 5px 0; font-size: 18px;">
                                        <asp:Label ID="Duration" runat="server" Style="font-size: 16px"></asp:Label>
                                    </p>

                                </td>

                                <td style="width: 25%; text-align: right; padding: 0 5px;">
                                    <p style="margin: 5px 0; font-weight: 600; font-size: 18px; text-transform: uppercase;">Destination Country</p>
                                    <p style="margin: 5px 0; font-size: 18px;">
                                        <asp:Label ID="DestinCountry" runat="server" Style="font-size: 16px"></asp:Label>
                                    </p>
                                </td>
                                <td style="width: 25%; text-align: center;">
                                    <img src="image/arrival.svg" style="width: 20%;">
                                </td>
                                <td style="width: 25%; padding: 0 5px;">
                                    <p style="margin: 5px 0; font-weight: 600; font-size: 18px; text-transform: uppercase;">Destination City</p>
                                    <p style="margin: 5px 0; font-size: 18px;">
                                        <asp:Label ID="DestinCity" runat="server" Style="font-size: 16px"></asp:Label>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                </tr>

                <!--Return Flight Details End-->

                <!--Passenger Details Start-->
                <tr>
                    <td style="padding-right: 15px; padding-top: 35px;" colspan="2">
                        <h3 style="text-transform: uppercase; margin: 0 0 5px;">Passenger Details:</h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table cellspacing="0" cellpadding="0" width="100%" style="border: 1px solid #ccc; margin: 0 0 25px;">
                            <thead>
                                <tr>
                                    <th style="font-weight: 400; background-color: #5191fa; color: #fff; padding: 10px 15px; width: 30%">Name
                                    </th>
                                    <th style="font-weight: 400; background-color: #5191fa; color: #fff; padding: 10px 15px; border-left: 1px solid #fff; width: 10%;">Class
                                    </th>

                                    <th style="font-weight: 400; background-color: #5191fa; color: #fff; padding: 10px 15px; border-left: 1px solid #fff; width: 25%;">Ticket Number
                                    </th>
                                    <th style="font-weight: 400; background-color: #5191fa; color: #fff; padding: 10px 15px; border-left: 1px solid #fff; width: 10%;">Number of Seat
                                    </th>
                                    <th style="font-weight: 400; background-color: #5191fa; color: #fff; padding: 10px 15px; border-left: 1px solid #fff; width: 10%;">Customer ID
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="font-size: 17px; padding: 15px; text-align: center;">
                                        <asp:Label ID="Lname" runat="server"></asp:Label>&nbsp;,<asp:Label ID="Fnmae" runat="server"></asp:Label>
                                    </td>
                                    <td style="font-size: 17px; padding: 15px; text-align: center; border-left: 1px solid #ccc;">
                                        <asp:Label ID="Class" runat="server"></asp:Label>
                                    </td>

                                    <td style="font-size: 17px; padding: 15px; text-align: center; border-left: 1px solid #ccc;">
                                        <asp:Label ID="TicketNumber" runat="server"></asp:Label>
                                    </td>
                                    <td style="font-size: 17px; padding: 15px; text-align: center; border-left: 1px solid #ccc;">
                                        <asp:Label ID="NumofSeat" runat="server"></asp:Label>
                                    </td>
                                    <td style="font-size: 17px; padding: 15px; text-align: center; border-left: 1px solid #ccc;">
                                        <asp:Label ID="CustomerID" runat="server"></asp:Label>
                                    </td>

                                </tr>

                            </tbody>
                        </table>
                    </td>
                </tr>
                <!--Passenger Details End-->



                <!--Cancellation Start-->
                <tr>
                    <td style="padding-right: 15px; padding-top: 25px;" colspan="2">
                        <h3 style="text-transform: uppercase; margin: 0 0 5px;">Grand Total:
                            <span style="color: #CC0000">$</span><asp:Label ID="TotalPrice" runat="server" Style="color: #FF3300; font-size: 21px;"></asp:Label>

                        </h3>

                    </td>
                </tr>
                <!--Cancellation End-->

                <!--Information Start-->
                <tr>
                    <td style="padding-right: 15px; padding-top: 25px;" colspan="2">
                        <h3 style="text-transform: uppercase; margin: 0 0 5px;">Information for Passengers:</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul style="margin: 10px 0 35px;">
                            <li style="margin-bottom: 10px;">Check-in: Check-in desks will close 2 hours before departure.</li>
                            <li style="margin-bottom: 10px;">Valid ID proof needed : Please carry a valid Passport and Visa (mandatory for international travel). Passport should have at least 6 months of validity at the time of travel</li>

                        </ul>
                        <p>
                            &nbsp;
                        </p>
                    </td>
                </tr>
                <!--Information End-->
                <!--Support Footer Start-->
                <tr>
                    <td style="border: 1px solid #ccc; border-top-width: 2px" colspan="2">
                        <h3 style="margin: 0; padding: 15px 0; background-color: #5191fa; color: #fff; text-align: center; text-transform: uppercase; font-weight: 400;">Jamaica Tourist Board Support:</h3>
                        <p style="padding-left: 15px;">
                            Call Us: 
                                         (876) 457-2545
                        </p>
                        <p style="padding-left: 15px;">Email Us:   <a href="mailto:Support@lexistaxi.com">Support@jamaica.touristboard.com</a></p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-size: 13px; padding: 25px 0;">Note: This is a computer generated invoice and does not require a signature/stamp. Please do not reply to this email. It has been sent from an email account that is not monitored.
                    </td>
                </tr>
                <!--Support Footer End-->
            </tbody>
        </table>
    </div>
</asp:Content>
