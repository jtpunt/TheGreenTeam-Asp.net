<%@ Page Title="Products" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
    <div id="wrapper">
	<div id="three-column" class="container">
    	<div class="banner">
    <form id="form1">
            <section>
			<h1>Please login to purchase our services:</h1>
    <h1>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </h1>
        <label>Please select a product&nbsp;</label>
        <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="Product_Name" 
            DataValueField="Product_ID">
        </asp:DropDownList><br />
        <div id="productData">
            <h3><asp:Label ID="lblName" runat="server"></asp:Label></h3><br />
            <p><b>Expected Duration of Service: </b><asp:Label ID="lblShortDescription" runat="server"></p></asp:Label><br />
            <p><asp:Label ID="lblLongDescription" runat="server"></asp:Label></p><br />
            <h3>Price Per Hour:</h3><p><asp:Label ID="lblUnitPrice" runat="server"></asp:Label></p><br />
          <br /> <br />
        </div>
        <asp:Image ID="imgProduct" runat="server" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString='<%$ ConnectionStrings:GTeamConnectionString %>' 
            SelectCommand="SELECT * FROM [Products]">
        </asp:SqlDataSource>
    </form>
    </section>
                </div>
          </div>
    </div>
</asp:Content>
