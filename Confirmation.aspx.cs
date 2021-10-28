using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class Confirmation : System.Web.UI.Page
{
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand myCommand = new SqlCommand(SqlDataSource1.InsertCommand);
        myCommand.Connection = myConnection;
        myCommand.Parameters.AddWithValue("@Project_ID", Session["MaxValue"]);
        myCommand.Parameters.AddWithValue("@Start_Date", Session["sessionDate"]);
        SqlDataReader myReader;
        myConnection.Open();
        myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
        myConnection.Close();
        Session.Remove("sessionDate");
        Session.Remove("MaxValue");
        Session.Remove("UserEmail");
        Session.Remove("Email");
        Session.Remove("myProduct");
        Session.Remove("myName");
        Session.Remove("myShortDescription");
        Session.Remove("myLongDescription");
        Session.Remove("myPrice");
        Session.Remove("Cart");
        Response.Redirect("Default.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        String testDate = DateTime.Today.AddDays(1).ToShortDateString();
        Session["sessionDate"] = testDate;
        lblConfirm.Text = "Thank you for your order " + Session["UserName"].ToString() + ". We will begin your project on " +
            testDate + ".";
    }
}