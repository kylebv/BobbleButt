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
            if (!IsPostBack)
            {
                //Product product = (Product)Session["user"];
                string product = Request.QueryString["PassingValue"].ToString();
                productUpdateName.Text = GlobalData.productList[(Convert.ToInt32(product))].Name;
                productUpdateCategory.Text = GlobalData.productList[(Convert.ToInt32(product))].Category;
                productUpdateStock.Text = Convert.ToString(GlobalData.productList[(Convert.ToInt32(product))].Stock);
                productUpdateDescription.Text = GlobalData.productList[(Convert.ToInt32(product))].Description;
                productUpdatePrice.Text = Convert.ToString(GlobalData.productList[(Convert.ToInt32(product))].Price);
                //productImage.Text = GlobalData.productList[(Convert.ToInt32(product))].Image;
                productUpdateQuantity.Text = Convert.ToString(GlobalData.productList[(Convert.ToInt32(product))].Quantity);
            }
        }
        protected void updateConfirmBtn_Clicked(object sender, System.EventArgs e)
        {
            string product = Request.QueryString["PassingValue"].ToString();

            string updateCategory = productUpdateCategory.Text;
            string updateName = productUpdateName.Text;
            int updateStock = Convert.ToInt32(productUpdateStock.Text);
            string updateDescription = productUpdateDescription.Text;
            double updatePrice = Convert.ToDouble(productUpdatePrice.Text);
            int updateQuantity = Convert.ToInt32(productUpdateQuantity.Text);

            string InsertImage = "img/" + Convert.ToString(updateFileUploadImg.FileName);
            updateFileUploadImg.SaveAs(Server.MapPath("~/img/" + updateFileUploadImg.FileName));
                //if (IsValid && updateFileUploadImg.PostedFile.ContentType == "image/jpeg" || updateFileUploadImg.PostedFile.ContentType == "image/png" || updateFileUploadImg.PostedFile.ContentType == "image/jpg")
                //{
                //GlobalData.productList.(InsertCategory, InsertName, InsertStock, InsertDescription, InsertPrice, InsertImage, InsertQuantity));
                GlobalData.productList[Convert.ToInt32(product)].Category = updateCategory;
                GlobalData.productList[Convert.ToInt32(product)].Name = updateName;
                GlobalData.productList[Convert.ToInt32(product)].Stock = updateStock;
                GlobalData.productList[Convert.ToInt32(product)].Description = updateDescription;
                GlobalData.productList[Convert.ToInt32(product)].Price = updatePrice;
                GlobalData.productList[Convert.ToInt32(product)].Quantity = updateQuantity;
                GlobalData.productList[Convert.ToInt32(product)].Image = InsertImage;
            
               
            //}
        }
    }
}