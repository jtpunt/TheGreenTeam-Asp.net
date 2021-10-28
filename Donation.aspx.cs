using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class Donation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadYears();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand myCommand = new SqlCommand(SqlDataSource1.InsertCommand);
        myCommand.Connection = myConnection;
        myCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
        myCommand.Parameters.AddWithValue("@Cust_FName", txtFirstName.Text);
        myCommand.Parameters.AddWithValue("@Cust_LName", txtLastName.Text);
        myCommand.Parameters.AddWithValue("@Cust_Address", txtAddress.Text);
        myCommand.Parameters.AddWithValue("@Cust_City", txtCity.Text);
        myCommand.Parameters.AddWithValue("@Cust_State", txtState.Text);
        myCommand.Parameters.AddWithValue("@Cust_Zip", txtZipCode.Text);
        myCommand.Parameters.AddWithValue("@column1", txtPhone.Text);
        myCommand.Parameters.AddWithValue("@Cust_Donation", TextDonate.Text);
        SqlDataReader myReader;
        myConnection.Open();
        myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
        myConnection.Close();
        Session["FName"] = txtFirstName.Text;
        Session["LName"] = txtLastName.Text;
        Session["DonationAmount"] = TextDonate.Text;
        Response.Redirect("DonateThanks.aspx");
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
}