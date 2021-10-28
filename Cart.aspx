<%@ Page Title = "Cart" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
	<div id="three-column" class="container">
    	<div class="banner">  
    <section>
        <form id="form1">
            <h1>Review Cart</h1>
                <p>
            <asp:ListBox ID="lstCart" runat="server" Height="129px" Width="385px"></asp:ListBox>
           
                <br />
                <asp:Button ID="btnGoBack" runat="server" BackColor="#006600" Font-Bold="True" 
             Font-Names="Verdana" Font-Size="Medium" ForeColor="White"
                    onclick ="btnGoBack_Click" Text="Go Back"/>
                <asp:Button ID="btnCheckOut" runat="server" BackColor="#006600" Font-Bold="True" 
             Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Text="Check Out"  
                    onclick="btnCheckOut_Click"/></p>
            
            <p id="message">
                <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>
            </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString='<%$ ConnectionStrings:GTeamConnectionString %>' 
                SelectCommand="SELECT [Name], [ShortDescription], [LongDescription], 
                [ImageFile], [UnitPrice], [ProductID] FROM [Products] ORDER BY [Name]">
            </asp:SqlDataSource>
        </form>
    </section>
                </div>
          </div>
    </div>
</asp:Content>