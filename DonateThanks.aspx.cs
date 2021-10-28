using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class DonationThanks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string firstName = Convert.ToString(Session["FName"]);
        string lastName = Convert.ToString(Session["LName"]);
        string donateAmount = Convert.ToString(Session["DonationAmount"]);
        lblMessage.Text = firstName + " " + lastName + ", for the donation amount of $" + donateAmount + ".";
        getSUM();
    }
  protected void getSUM()
  {
    // SQL query that gets total of product sales where category id = 1
    string SqlQuery = @"SELECT SUM(Cust_Donation) AS TotalDonation 
      FROM [Donation]";
  
    // Declare and open a connection to database
    SqlConnection conn = new SqlConnection(
    ConfigurationManager.ConnectionStrings["GTeamConnectionString"].ConnectionString);
    conn.Open();
  
    // Creates SqlCommand object
    SqlCommand comm = new SqlCommand(SqlQuery, conn);
  
    // Gets total sales
    decimal TotalDonation = Convert.ToDecimal(comm.ExecuteScalar());
  
    // Close connection
    conn.Close();
    conn.Dispose();
    comm.Dispose();

    // Adds formatted output to GridView footer
    GridView1.Columns[2].FooterText = String.Format("{0:c}", TotalDonation);
  }
}  
