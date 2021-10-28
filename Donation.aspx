<%@ Page Title="Donation" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="wrapper">
	<div id="three-column" class="container">
    	<div class="banner">  
 <h2>Donation information:</h2>
             <p>Please enter the following information:</p><br />
            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" Width="150px" MaxLength="25" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>First name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" Width="150px" MaxLength="20" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="First name is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>Last name:</label>
            <asp:TextBox ID="txtLastName" runat="server" Width="150px" MaxLength="20" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="Last name is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>Address:</label>
            <asp:TextBox ID="txtAddress" runat="server" Width="250px" MaxLength="40" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="Address is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>City:</label>
            <asp:TextBox ID="txtCity" runat="server" Width="180px" MaxLength="30" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCity"
                    ErrorMessage="City is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>State:</label>
            <asp:TextBox ID="txtState" runat="server" Width="25px" MaxLength="2" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtState"
                    ErrorMessage="State is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>Zip code:</label>
            <asp:TextBox ID="txtZipCode" runat="server" Width="75px" MaxLength="9" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtZipCode"
                    ErrorMessage="Zip code is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>Phone:</label>
            <asp:TextBox ID="txtPhone" runat="server" Width="150px" MaxLength="20" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPhone"
                    Display="Dynamic" ErrorMessage="Phone is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /> <br />

            <h2>Payment information:</h2><br />
            <label>Donation Amount:</label> $
            <asp:TextBox ID="TextDonate" runat="server" Width="150px" MaxLength="20" CssClass="entry"></asp:TextBox>
                <asp:RegularExpressionValidator id="RegularExpressionValidator1"
                   ControlToValidate="TextDonate"
                   ValidationExpression="\d+"
                   Display="Static"
                   EnableClientScript="true"
                   ErrorMessage="Please enter numbers only"
                   runat="server"/><br /> <br />
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
                        ErrorMessage="Credit card number is required." Display="Dynamic" CssClass="validator"></asp:RequiredFieldValidator><br /><br />
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
                            <asp:Button ID="btnSubmit" runat="server" BackColor="#336699" Font-Bold="True"
            Font-Names="Verdana" Font-Size="Large" ForeColor="White" 
            Text="Submit" onclick="btnSubmit_Click" /><br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:GTeamConnectionString %>" InsertCommand="INSERT INTO [Donation] ([Email], [Cust_FName], [Cust_LName], [Cust_Address], [Cust_City], [Cust_State], [Cust_Zip], [Cust_Phone#], [Cust_Donation]) VALUES (@Email, @Cust_FName, @Cust_LName, @Cust_Address, @Cust_City, @Cust_State, @Cust_Zip, @column1, @Cust_Donation)" 
                OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Donation] WHERE [Email] = @original_Email" SelectCommand="SELECT * FROM [Donation] WHERE (([Email] = @Email) AND ([Cust_FName] = @Cust_FName) AND ([Cust_LName] = @Cust_LName) AND ([Cust_Address] = @Cust_Address) AND ([Cust_City] = @Cust_City) AND ([Cust_State] = @Cust_State) AND ([Cust_Zip] = @Cust_Zip) AND ([Cust_Phone#] = @column1) AND ([Cust_Donation] = @Cust_Donation))" UpdateCommand="UPDATE [Donation] SET [Cust_FName] = @Cust_FName, [Cust_LName] = @Cust_LName, [Cust_Address] = @Cust_Address, [Cust_City] = @Cust_City, [Cust_State] = @Cust_State, [Cust_Zip] = @Cust_Zip, [Cust_Phone#] = @column1, [Cust_Donation] = @Cust_Donation WHERE [Email] = @original_Email">
                <DeleteParameters>
                    <asp:Parameter Name="original_Email" Type="String" />
                </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Cust_FName" Type="String" />
                <asp:Parameter Name="Cust_LName" Type="String" />
                <asp:Parameter Name="Cust_Address" Type="String" />
                <asp:Parameter Name="Cust_City" Type="String" />
                <asp:Parameter Name="Cust_State" Type="String" />
                <asp:Parameter Name="Cust_Zip" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="Cust_Donation" Type="Decimal" />
            </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtFirstName" Name="Cust_FName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtLastName" Name="Cust_LName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtAddress" Name="Cust_Address" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtCity" Name="Cust_City" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtState" Name="Cust_State" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtZipCode" Name="Cust_Zip" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtPhone" Name="column1" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextDonate" Name="Cust_Donation" PropertyName="Text" Type="Decimal" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Cust_FName" Type="String" />
                    <asp:Parameter Name="Cust_LName" Type="String" />
                    <asp:Parameter Name="Cust_Address" Type="String" />
                    <asp:Parameter Name="Cust_City" Type="String" />
                    <asp:Parameter Name="Cust_State" Type="String" />
                    <asp:Parameter Name="Cust_Zip" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                    <asp:Parameter Name="Cust_Donation" Type="Decimal" />
                    <asp:Parameter Name="original_Email" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>
               </div>
          </div>
    </div>
</asp:Content>



