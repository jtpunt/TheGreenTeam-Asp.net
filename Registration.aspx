<%@ Page Title="Register" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
	<div id="three-column" class="container">
    	<div class="banner">   
    <section>
    <form id="form1">
            <h1>Please enter the following information:</h1><br />
            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" Width="150px" MaxLength="25" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <Label>Password:</Label>
            <asp:TextBox ID="txtPassword" runat="server" Font-Names="Bookman Old Style" Font-Size="Medium"
            TextMode="Password" Width="175px"></asp:TextBox>*required
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage=" (Please enter your password)" CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <Label>Confirm Password:</Label>
            <asp:TextBox ID="txtPassword2" runat="server" Font-Names="Bookman Old Style" Font-Size="Medium"
            TextMode="Password" Width="175px"></asp:TextBox>*required
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtPassword2" ErrorMessage=" (Passwords do not match)" CssClass="validator"></asp:CompareValidator><br /><br />

            <label>First name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" Width="150px" MaxLength="20" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="First name is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>Last name:</label>
            <asp:TextBox ID="txtLastName" runat="server" Width="150px" MaxLength="20" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="Last name is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>Address:</label>
            <asp:TextBox ID="txtAddress" runat="server" Width="250px" MaxLength="40" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="Address is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>City:</label>
            <asp:TextBox ID="txtCity" runat="server" Width="180px" MaxLength="30" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity"
                    ErrorMessage="City is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>State:</label>
            <asp:TextBox ID="txtState" runat="server" Width="25px" MaxLength="2" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtState"
                    ErrorMessage="State is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>Zip code:</label>
            <asp:TextBox ID="txtZipCode" runat="server" Width="75px" MaxLength="9" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtZipCode"
                    ErrorMessage="Zip code is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <label>Phone:</label>
            <asp:TextBox ID="txtPhone" runat="server" Width="150px" MaxLength="20" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPhone"
                    Display="Dynamic" ErrorMessage="Phone is a required field." CssClass="validator"></asp:RequiredFieldValidator><br /><br />

            <asp:Button ID="btnSubmit" runat="server" BackColor="#336699" Font-Bold="True"
            Font-Names="Verdana" Font-Size="Large" ForeColor="White" 
            Text="Submit" onclick="btnSubmit_Click" /><br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:GTeamConnectionString %>" InsertCommand="INSERT INTO [Customer] ([Email], [Password], [Cust_FName], [Cust_LName], [Cust_Address], [Cust_City], [Cust_State], [Cust_Zip], [Cust_Phone#]) VALUES (@Email, @Password, @Cust_FName, @Cust_LName, @Cust_Address, @Cust_City, @Cust_State, @Cust_Zip, @column1)" 
                OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Customer] WHERE [Email] = @original_Email" SelectCommand="SELECT * FROM [Customer] WHERE (([Email] = @Email) AND ([Password] = @Password) AND ([Cust_FName] = @Cust_FName) AND ([Cust_LName] = @Cust_LName) AND ([Cust_Address] = @Cust_Address) AND ([Cust_City] = @Cust_City) AND ([Cust_State] = @Cust_State) AND ([Cust_Zip] = @Cust_Zip) AND ([Cust_Phone#] = @column1))" UpdateCommand="UPDATE [Customer] SET [Password] = @Password, [Cust_FName] = @Cust_FName, [Cust_LName] = @Cust_LName, [Cust_Address] = @Cust_Address, [Cust_City] = @Cust_City, [Cust_State] = @Cust_State, [Cust_Zip] = @Cust_Zip, [Cust_Phone#] = @column1 WHERE [Email] = @original_Email">
                <DeleteParameters>
                    <asp:Parameter Name="original_Email" Type="String" />
                </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Cust_FName" Type="String" />
                <asp:Parameter Name="Cust_LName" Type="String" />
                <asp:Parameter Name="Cust_Address" Type="String" />
                <asp:Parameter Name="Cust_City" Type="String" />
                <asp:Parameter Name="Cust_State" Type="String" />
                <asp:Parameter Name="Cust_Zip" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
            </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="cvPassword" Name="Password" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtFirstName" Name="Cust_FName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtLastName" Name="Cust_LName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtAddress" Name="Cust_Address" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtCity" Name="Cust_City" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtState" Name="Cust_State" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtZipCode" Name="Cust_Zip" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtPhone" Name="column1" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Cust_FName" Type="String" />
                    <asp:Parameter Name="Cust_LName" Type="String" />
                    <asp:Parameter Name="Cust_Address" Type="String" />
                    <asp:Parameter Name="Cust_City" Type="String" />
                    <asp:Parameter Name="Cust_State" Type="String" />
                    <asp:Parameter Name="Cust_Zip" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>

    </form>
    </section>
    </div>
          </div>
    </div>
</asp:Content>