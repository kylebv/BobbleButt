﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BobbleButt
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected List<Product> cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            cart = new List<Product>();
            if(Session["cart"]!=null)
            {
                cart = (List<Product>)Session["cart"];
            }
        }
    }
}