<%@ Page Title = "Admin" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
	<div id="three-column" class="container">
    	<div class="banner"> 
        <form id="form1">
            <h1>Manager's View</h1>
            <p>Assign consultant to a project</p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GTeamConnectionString %>" DeleteCommand="DELETE FROM [Project_Assignment] WHERE [Project_ID] = @Project_ID" InsertCommand="INSERT INTO [Project_Assignment] ([Project_ID], [Cons_ID]) VALUES (@Project_ID, @Cons_ID)" SelectCommand="SELECT [Project_ID], [Cons_ID] FROM [Project_Assignment] WHERE ([Cons_ID] IS NULL)" UpdateCommand="UPDATE [Project_Assignment] SET [Cons_ID] = @Cons_ID WHERE [Project_ID] = @Project_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Project_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Project_ID" Type="Int32" />
                        <asp:Parameter Name="Cons_ID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Cons_ID" Type="Int32" />
                        <asp:Parameter Name="Project_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Project_ID" DataSourceID="SqlDataSource1" AllowPaging="True" ForeColor="Black" GridLines="Both" Height="144px" OnPageIndexChanging="FormView1_PageIndexChanging" Width="411px">
                    <EditItemTemplate>
                        Project_ID:
                        <asp:Label ID="Project_IDLabel1" runat="server" Text='<%# Eval("Project_ID") %>' />
                        <br /><br />
                        Assign a consultant:&nbsp;<br /><asp:DropDownList ID="Cons_IDLabel" runat="server" Width="130px" AppendDataBoundItems="true" SelectedValue='<%# Bind("Cons_ID") %>' >
                            <asp:ListItem Text="Select" Value="" Enabled="False" />
                            <asp:ListItem Value="1" Selected="True">Jonathan Perry</asp:ListItem>
                            <asp:ListItem Value="2">Keith Trice</asp:ListItem>
                            <asp:ListItem Value="3">Daniel Ridge</asp:ListItem>
                        </asp:DropDownList><br /><br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        Project_ID:
                        <asp:TextBox ID="Project_IDTextBox" runat="server" Text='<%# Bind("Project_ID") %>' />
                        <br />
                        Cons_ID:
                        <asp:TextBox ID="Cons_IDTextBox" runat="server" Text='<%# Bind("Cons_ID") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Project_ID:
                        <asp:Label ID="Project_IDLabel" runat="server" Text='<%# Eval("Project_ID") %>' />
                        <br />
                        No Consultant Assigned:
                        <asp:Label ID="Cons_IDLabel" runat="server" Text='<%# Bind("Cons_ID") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:FormView>

                <br />
            </p>

        </form>
    </section>
                </div>
          </div>
    </div>
</asp:Content>
