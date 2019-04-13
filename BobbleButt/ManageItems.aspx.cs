using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BobbleButt
{
    public partial class ManageItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ManageInsertsCancelBtn_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("main.aspx");
            
        }
        protected void ManageInsertsSubmitBtn_Click(object sender, EventArgs e)
        {

            string InsertCategory = manageInsertCategory.Text ;
            string InsertName = manageInsertName.Text;
            int InsertStock = Convert.ToInt32(manageInsertStock.Text);
            string InsertDescription = manageInsertDescription.Text;
            double InsertPrice = Convert.ToDouble(manageInsertPrice.Text);
            int InsertQuantity = Convert.ToInt32(manageInsertQuantity.Text);

            string InsertImage = "img/" + Convert.ToString(FileUploadImg.FileName);
            


            if (IsValid)
            {
                //https://asp.net-tutorials.com/controls/file-upload-control/
                if (FileUploadImg.PostedFile.ContentType == "image/jpeg" || FileUploadImg.PostedFile.ContentType == "image/png" || FileUploadImg.PostedFile.ContentType == "image/jpg")
                {
                    insertImageFileError.Visible = false;
                    //https://www.youtube.com/watch?v=irF6Zomjxwc&feature=youtu.be 4.40
                    FileUploadImg.SaveAs(Server.MapPath("~/img/" + FileUploadImg.FileName));
                    GlobalData.productList.Add(new Product(InsertCategory, InsertName, InsertStock, InsertDescription, InsertPrice, InsertImage, InsertQuantity));
                    Response.Redirect("ManageItems.aspx");
                }
                else
                {
                    insertImageFileError.Visible = true;
                }
            }
            /*else
            {

                ((Label)FindControl("InsertErrorMessage")).Visible = true;
            }*/
        
        }
        protected void insertUploadBtn_Click(object sender, EventArgs e)
        {
            
        }
    }
}