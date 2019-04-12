using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BobbleButt
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Product product = (Product)Session["user"];
            string product = Request.QueryString["PassingValue"].ToString();
            productName.Text = GlobalData.productList[(Convert.ToInt32(product))].Name;
            productCategory.Text = GlobalData.productList[(Convert.ToInt32(product))].Category;
            productStock.Text = Convert.ToString(GlobalData.productList[(Convert.ToInt32(product))].Stock);
            productDescription.Text = GlobalData.productList[(Convert.ToInt32(product))].Description;
            productPrice.Text = Convert.ToString(GlobalData.productList[(Convert.ToInt32(product))].Price);
            productImage.Text = GlobalData.productList[(Convert.ToInt32(product))].Image;
            productQuantity.Text = Convert.ToString(GlobalData.productList[(Convert.ToInt32(product))].Quantity);

        }
    }
}