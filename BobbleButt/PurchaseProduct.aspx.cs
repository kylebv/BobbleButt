using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BobbleButt
{
    public partial class PurchaseProduct : System.Web.UI.Page
    {
        string product;
        protected void Page_Load(object sender, EventArgs e)
        {
            product = Request.QueryString["PassingValue"];

            productNumber.Text = product;

            productViewName.Text = GlobalData.productList[Convert.ToInt32(product)].Name;
            productViewPrice.Text = "Price: $"+Convert.ToString(GlobalData.productList[Convert.ToInt32(product)].Price);
            productViewDescription.Text = GlobalData.productList[Convert.ToInt32(product)].Description;
            productViewImage.ImageUrl = GlobalData.productList[Convert.ToInt32(product)].Image;


        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            
            if (product != null)
            {
                int productIndex = Convert.ToInt32(product);
                List<Product> cart = new List<Product>();
                bool isCartNew = false;
                if (Session["cart"] == null)
                {
                    isCartNew = true;
                }
                else { cart = (List<Product>)Session["cart"]; }
                Product p = GlobalData.productList[productIndex];
                p.Quantity = 1;
                if (isCartNew)
                {
                    cart.Add(p);
                    Session.Add("cart", cart);
                }
                else
                {
                    int positionIndex = -1;
                    for (int i = 0; i < cart.Count; i++)
                    {
                        if (cart[i].Name.Equals(p.Name))
                        {
                            positionIndex = i;
                        }
                    }
                    if (positionIndex == -1)
                    {
                        cart.Add(p);
                    }
                    else
                    {
                        cart[positionIndex].Quantity += 1;
                    }
                    Session["cart"] = cart;
                }
            }
            Response.Redirect("PurchaseProduct.aspx?PassingValue=" + product);

        }
    }
}