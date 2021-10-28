<%@ Page Title="Donation - Thanks" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="DonateThanks.aspx.cs" Inherits="DonationThanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="wrapper">
	<div id="three-column" class="container">
    	<div class="banner">  
 <h2>Thank you <asp:Label ID="lblMessage" runat="server"></asp:Label> </h2>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GTeamConnectionString %>" SelectCommand="SELECT [Cust_FName], [Cust_LName], [Cust_Donation] FROM [Donation]">
         </asp:SqlDataSource> <br />
            <h3>Take a look at those who have supported our cause!</h3><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Cust_FName" HeaderText="First Name" SortExpression="Cust_FName" FooterText ="Total:" />
                    <asp:BoundField DataField="Cust_LName" HeaderText="Last Name" SortExpression="Cust_LName" />
                    <asp:BoundField DataField="Cust_Donation" DataFormatString="{0:c}" HeaderText="Donation Amount" SortExpression="Cust_Donation"/>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#89B64A" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#89B64A" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
               </div>
          </div>
    </div>
</asp:Content>



