using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;

public partial class Order : System.Web.UI.Page
{
    private Product selectedProduct;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            lblMessage.Text = "Hello " + Session["UserName"].ToString();
            lblMessage.Visible = true;
        }
        else
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
            ddlProducts.DataBind();

        selectedProduct = this.GetSelectedProduct();
        lblName.Text = selectedProduct.Name;
        lblShortDescription.Text = selectedProduct.ShortDescription;
        lblLongDescription.Text = selectedProduct.LongDescription;
        lblUnitPrice.Text = selectedProduct.UnitPrice.ToString("c");
        imgProduct.ImageUrl = "images/Products/" + selectedProduct.ImageFile;
    }

    private Product GetSelectedProduct()
    {
        DataView productsTable = (DataView)
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        productsTable.RowFilter =
            "Product_ID = '" + ddlProducts.SelectedValue + "'";
        DataRowView row = (DataRowView)productsTable[0];

        Product p = new Product();
        p.ProductID = row["Product_ID"].ToString();
        p.Name = row["Product_Name"].ToString();
        p.ShortDescription = row["Short_Description"].ToString();
        p.LongDescription = row["Long_Description"].ToString();
        p.UnitPrice = (decimal)row["Price"];
        p.ImageFile = row["ImageFile"].ToString();
        return p;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
            CartItemList cart = CartItemList.GetCart();
            CartItem cartItem = cart[selectedProduct.ProductID];
            if (cartItem == null)
            {
                cart.AddItem(selectedProduct, 1);
            }
            Session["myProduct"] = selectedProduct.ProductID;
            Session["myName"] = selectedProduct.Name;
            Session["myShortDescription"] = selectedProduct.ShortDescription;
            Session["myLongDescription"] = selectedProduct.LongDescription;
            Session["myPrice"] = selectedProduct.UnitPrice;
            Response.Redirect("Cart.aspx");
    }
}
