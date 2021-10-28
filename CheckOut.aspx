<%@ Page Title="CheckOut" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
	<div id="three-column" class="container">
    	<div class="banner"> 
    <section>
        <form id="form1">
            <h1>Review Order</h1>
            <p><asp:Label ID="lblMessage" runat="server"></asp:Label></p>
               <label>Name Your Project:</label>
            <asp:TextBox ID="txtProjectName" runat="server" Width="150px" MaxLength="20" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtProjectName"
                    ErrorMessage="Project name is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />
            <h1>Payment information:</h1>
            <div id="payment">
                <asp:ListBox ID="lstCardType" runat="server" Width="155px" Rows="4">
                    <asp:ListItem Selected="True" Value="None">--Select a credit card--</asp:ListItem>
                    <asp:ListItem>VISA</asp:ListItem>
                    <asp:ListItem Value="MC">MasterCard</asp:ListItem>
                    <asp:ListItem Value="AMEX">American Express</asp:ListItem>
                </asp:ListBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lstCardType"
                    Display="Dynamic" ErrorMessage="You must select a credit card." InitialValue="None" CssClass="validator">
                </asp:RequiredFieldValidator><br /><br />
                
                <label>Card number:</label>
                <asp:TextBox ID="txtCardNumber" runat="server" MaxLength="20" Width="160px" CssClass="entry"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCardNumber"
                        ErrorMessage="Credit card number is required." Display="Dynamic" CssClass="validator"></asp:RequiredFieldValidator><br />
                <label>Expiration date:</label>
                    <asp:DropDownList ID="ddlMonth" runat="server" Width="100px" CssClass="entry">
                        <asp:ListItem Value="1">January</asp:ListItem>
                        <asp:ListItem Value="2">February</asp:ListItem>
                        <asp:ListItem Value="3">March</asp:ListItem>
                        <asp:ListItem Value="4">April</asp:ListItem>
                        <asp:ListItem Value="5">May</asp:ListItem>
                        <asp:ListItem Value="6">June</asp:ListItem>
                        <asp:ListItem Value="7">July</asp:ListItem>
                        <asp:ListItem Value="8">August</asp:ListItem>
                        <asp:ListItem Value="9">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="1">November</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYear" runat="server" Width="58px" CssClass="entry">
                    </asp:DropDownList><br />
            </div>
            <p id="buttons">
                <asp:Button ID="btnAccept" runat="server" BackColor="#006600" Font-Bold="True" 
             Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Text="Accept Order" 
                    OnClick="btnAccept_Click"/>
                <asp:Button ID="btnCancel" runat="server" BackColor="#006600" Font-Bold="True" 
             Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Text="Cancel Order" 
                    CausesValidation="False" onclick="btnCancel_Click"/>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GTeamConnectionString %>" SelectCommand="SELECT * FROM [Project] WHERE (([Project_ID] = @Project_ID) AND ([Project_Name] = @Project_Name) AND ([Cust_Email] = @Cust_Email) AND ([Product_ID] = @Product_ID))" DeleteCommand="DELETE FROM [Project] WHERE [Project_ID] = @Project_ID" InsertCommand="INSERT INTO [Project] ([Project_ID], [Project_Name], [Cust_Email], [Product_ID]) VALUES (@Project_ID, @Project_Name, @Cust_Email, @Product_ID)" UpdateCommand="UPDATE [Project] SET [Project_Name] = @Project_Name, [Cust_Email] = @Cust_Email, [Product_ID] = @Product_ID WHERE [Project_ID] = @Project_ID">
                                 <DeleteParameters>
                                     <asp:Parameter Name="Project_ID" Type="Int32" />
                                 </DeleteParameters>
                                 <InsertParameters>
                                     <asp:Parameter Name="Project_ID" Type="Int32" />
                                     <asp:Parameter Name="Project_Name" Type="String" />
                                     <asp:Parameter Name="Cust_Email" Type="String" />
                                     <asp:Parameter Name="Product_ID" Type="String" />
                                 </InsertParameters>
                                 <SelectParameters>
                                     <asp:SessionParameter Name="Project_ID" SessionField="MaxValue" Type="Int32" />
                                     <asp:ControlParameter ControlID="txtProjectName" Name="Project_Name" PropertyName="Text" Type="String" />
                                     <asp:SessionParameter Name="Cust_Email" SessionField="UserEmail" Type="String" />
                                     <asp:SessionParameter Name="Product_ID" SessionField="myProduct" Type="String" />
                                 </SelectParameters>
                                 <UpdateParameters>
                                     <asp:Parameter Name="Project_Name" Type="String" />
                                     <asp:Parameter Name="Cust_Email" Type="String" />
                                     <asp:Parameter Name="Product_ID" Type="String" />
                                     <asp:Parameter Name="Project_ID" Type="Int32" />
                                 </UpdateParameters>
         </asp:SqlDataSource>
            </p> 
        </form>
    </section>
                </div>
          </div>
    </div>
</asp:Content>