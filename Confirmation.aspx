<%@ Page Title = "Confirmation" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
	<div id="three-column" class="container">
    	<div class="banner"> 
        <form id="form1">
            <p>
                <asp:Label ID="lblConfirm" runat="server"></asp:Label><br /><br />
            </p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GTeamConnectionString %>" SelectCommand="SELECT [Project_ID], [Start_Date] FROM [Project_Assignment] WHERE (([Project_ID] = @Project_ID) AND ([Start_Date] = @Start_Date))" DeleteCommand="DELETE FROM [Project_Assignment] WHERE [Project_ID] = @Project_ID" InsertCommand="INSERT INTO [Project_Assignment] ([Project_ID], [Start_Date]) VALUES (@Project_ID, @Start_Date)" UpdateCommand="UPDATE [Project_Assignment] SET [Start_Date] = @Start_Date WHERE [Project_ID] = @Project_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Project_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Project_ID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="Start_Date" />
                </InsertParameters>
             <SelectParameters>
                 <asp:SessionParameter Name="Project_ID" SessionField="MaxValue" Type="Int32" />
                 <asp:SessionParameter DbType="Date" Name="Start_Date" SessionField="sessionDate" />
             </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="Start_Date" />
                    <asp:Parameter Name="Project_ID" Type="Int32" />
                </UpdateParameters>
         </asp:SqlDataSource>
            <p>
                <asp:Button ID="btnReturn" runat="server" BackColor="#006600" Font-Bold="True" 
             Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Text="Log Out" OnClick="btnReturn_Click" />
            </p>
        </form>
    </section>
                </div>
          </div>
    </div>
</asp:Content>
