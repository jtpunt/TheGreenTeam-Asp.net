<%@ Page Title="Login" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
	<div id="three-column" class="container">
    	<div class="banner">             
     <h2>Please Login</h2>
     <p>
         <strong>User Name:</strong>
         <asp:TextBox ID="txtUserName" runat="server" Width="200px"></asp:TextBox>
    </p>
    <p>
        <strong>Password: &nbsp;
         <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
         </strong></p>
    <p> 
         <asp:Button ID="btnSubmit" runat="server" BackColor="#006600" Font-Bold="True" 
             Font-Names="Verdana" Font-Size="Medium" ForeColor="White" 
             onclick="btnSubmit_Click" Text="Submit" />
        <asp:Button ID="btnRegister" runat="server" BackColor="#006600" Font-Bold="True" 
             Font-Names="Verdana" Font-Size="Medium" ForeColor="White" 
             onclick="btnRegister_Click" Text="Register" />
    </p>
            <h3>User Name:</h3> <p>Dell@email.com</p>
            <h3>Password: </h3> <p>password</p>
    <p>
         <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Names="Verdana" 
             Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GTeamConnectionString %>" SelectCommand="SELECT * FROM [Customer] WHERE (([Email] = @Email) AND ([Password] = @Password))">
             <SelectParameters>
                 <asp:ControlParameter ControlID="txtUserName" DefaultValue="" Name="Email" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtPassword" Name="Password" PropertyName="Text" />
             </SelectParameters>
         </asp:SqlDataSource>
    </p>
    </div>
          </div>
    </div>
</asp:Content>
