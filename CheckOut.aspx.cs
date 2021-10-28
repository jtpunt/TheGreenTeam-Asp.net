using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class CheckOut : System.Web.UI.Page
{
    CartItemList cart;
    string email;
    string invoiceNumber;

    protected void Page_Load(object sender, EventArgs e)
    {
        cart = (CartItemList)Session["Cart"];
        email = (string)Session["Email"];
        this.LoadYears();
        lblMessage.Text = "<b>Service</b><br />" + Session["myName"].ToString() + "<br /><br /><b>Estimation</b><br />" + Session["myShortDescription"].ToString() + "<br /><br /><b>Description</b><br />" + Session["myLongDescription"].ToString() + "<br /><br /><b>Total Price</b><br />$" + Convert.ToDouble(Session["myPrice"]);
        lblMessage.Visible = true;

        SqlConnection sqlConnection1 = new SqlConnection("Data Source=mimas.itds.unt.edu;Persist Security Info=True;User ID=GTeamAdmin;Password=XrCDtyh5");
        SqlCommand cmd = new SqlCommand();
        Object returnValue;

        cmd.CommandText = "SELECT (MAX(Project.Project_ID)) AS MaxID FROM [Project]";
        cmd.CommandType = CommandType.Text;
        cmd.Connection = sqlConnection1;

        sqlConnection1.Open();

        returnValue = cmd.ExecuteScalar();
        int maxValue = Convert.ToInt32(returnValue);
        maxValue++;

        Session["MaxValue"] = maxValue;
        sqlConnection1.Close();
    }
    private void LoadYears()
    {
        int year = DateTime.Now.Year;
        for (int i = 0; i < 7; i++)
        {
            ddlYear.Items.Add(year.ToString());
            year += 1;
        }
    }
    protected void btnAccept_Click(object sender, EventArgs e)
    {
        SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand myCommand = new SqlCommand(SqlDataSource1.InsertCommand);
        myCommand.Connection = myConnection;
        myCommand.Parameters.AddWithValue("@Project_ID", Session["MaxValue"]);
        myCommand.Parameters.AddWithValue("@Project_Name", txtProjectName.Text);
        myCommand.Parameters.AddWithValue("@Cust_Email", Session["UserEmail"]);
        myCommand.Parameters.AddWithValue("@Product_ID", Session["myProduct"]);
        SqlDataReader myReader;
        myConnection.Open();
        myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
        myConnection.Close();
        Response.Redirect("Confirmation.aspx");
    }



    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Session.Remove("Cart");
        Response.Redirect("Order.aspx");
    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("Order.aspx");
    }
}
