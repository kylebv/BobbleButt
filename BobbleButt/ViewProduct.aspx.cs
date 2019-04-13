using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BobbleButt
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        protected string mode;
        protected string product;

      
        protected void Page_Load(object sender, EventArgs e)
        {
            
                mode = Request.QueryString["mode"];
                product = Request.QueryString["product"];
                if (mode != null)
                {
                    if (mode.Equals("DeleteItem"))
                    {
                        GlobalData.productList.RemoveAt(Convert.ToInt32(product));
                    }

                    if (mode.Equals("UpdateItem"))
                    {
                    
                        Response.Redirect("Update.aspx?PassingValue=" + Server.UrlEncode(product));

                    }
                }
            
        }
        protected void viewDeleteBtn_Clicked(object sender, System.EventArgs e)
        {
            

           
        }
        protected void viewUpdateBtn_Clicked(object sender, System.EventArgs e)
        {
            
        }
        protected void viewAddNewBtn_Clicked(object sender, System.EventArgs e)
        {
              Response.Redirect("ManageItems.aspx");   
        }

    }
}