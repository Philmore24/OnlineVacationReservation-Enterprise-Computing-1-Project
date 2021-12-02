<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CarsMarket.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>Sign Up</header>

    
   <div class="center-page">
        
       <label class="col-xs-11">First Name</label> 
       <div class="col-xs-11">
            <asp:TextBox ID="tbFirstName" runat="server" Class="form-control" placeholder="First Name"></asp:TextBox>
        </div>

       <label class="col-xs-11">Last Name</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbLastName" runat="server" Class="form-control" placeholder="Last Name"></asp:TextBox>
        </div>
        
       <label class="col-xs-11">Email</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbEmail" runat="server"  TextMode="Email" placeholder="xxxx@gmail.com" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:RequiredFieldValidator ID="tbEmail1" runat="server" ErrorMessage="Email ID field cannot be blank." CssClass="auto-style4" ControlToValidate="tbEmail" Style="color: #FF0000"></asp:RequiredFieldValidator>
        </div>

       <label class="col-xs-11">Phone Number</label>
        <div class="col-xs-11">
           <asp:TextBox ID="tbPhoneNumber" runat="server" TextMode="Phone" placeholder="10 Digit" MaxLength="10" AutoCompleteType="Disabled"></asp:TextBox>
        </div>
       
         

        <label class="col-xs-11">Date Of Birth</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbDOB" runat="server" placeholder="DD-MM-YYYY" MaxLength="30" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:RegularExpressionValidator ID="DOB_REV" runat="server" ControlToValidate="tbDOB" ErrorMessage="Please Enter The Correct Date Format" Style="color: #FF0000" ValidationExpression="^(?:[012]?[0-9]|3[01])[-](?:0?[1-9]|1[0-2])[-](?:[0-9]{2}){1,2}$"></asp:RegularExpressionValidator>
        </div>

       <label class="col-xs-11">Address</label> 
       <div class="col-xs-11">
            <asp:TextBox ID="tbAddress" runat="server" TextMode="MultiLine" placeholder="Address"></asp:TextBox>
        </div>

        <label class="col-xs-11">Password</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
        </div>

        <label class="col-xs-11">Confirm Password</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
        </div>

        <label class="col-xs-11">User Name</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbUsername" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
        </div>


        <div class="col-xs-11 space-vert">
        <asp:Button ID="btSignup" runat="server" Class="btn btn-success" Text="Sign Up" OnClick="btSignup_Click" />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
    </div>

</asp:Content>
