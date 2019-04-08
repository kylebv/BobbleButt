<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageHeader.aspx.cs" Inherits="BobbleButt.PageHeader" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>BobbleButt</title>
    <meta name="viewport"
        content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css"
          rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <link href="stylesheet.css" rel="stylesheet" />
    <script type=text/javascript src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript">
        function toggleCart() { try { jQuery("#CART").fadeToggle(); } catch (err) { alert(err.message); } }
    </script>
</head>
    
<body>
<form id="form1" runat="server">

<nav class="navbar fixed-top navbar-expand-lg navbar-expand-md navbar-dark bg-light">
  <img src="img/bobblebuttlogo.png" class="img-fluid" style="max-width:8%"/>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
    </ul>
    <div class="form-inline my-2 my-lg-0 mx-auto col-lg-8">
      <input class="form-control mr-sm-2 col-lg-6" type="text" placeholder="Search">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </div>
  </div>
    <% if(Session["user"]==null){%>
        <asp:imagebutton id="imb_user" class="img-icon fa fa-shopping-cart" runat="server" imageurl="img/user.png"
            onmouseover="src='img/user_hover.png';"
            onmouseout="src='img/user.png';"> 
        </asp:imagebutton>
      
    <% } else {%>
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Sign In / Register</a>
            </li>
        </ul>

    <%}%>
    <asp:imagebutton id="imb_cart" class="img-icon" runat="server" imageurl="img/cart.png"
            onmouseover="src='img/cart_hover.png';"
            onmouseout="src='img/cart.png';" OnClientClick="toggleCart();return false;"> 
        </asp:imagebutton>
    <% if (cart!= null)
             {
                 if (cart.Count > 0)
                 {%>
    <span class="badge"><%=cart.Count%></span>
    <%}
             } %>
    <span class="badge">0</span>

</nav>
    <!--begin checkout menu-->
    <div class="container">
  <div id="CART" class="shopping-cart">
    <div class="shopping-cart-header">
      <i class="fa fa-shopping-cart cart-icon"></i><span class="badge">3</span>
      <div class="shopping-cart-total">
        <span class="lighter-text">Total:</span>
        <span class="main-color-text">$2,229.97</span>
      </div>
    </div> <!--end shopping-cart-header -->

    <ul class="shopping-cart-items">
      
      <li class="clearfix">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item1.jpg" alt="item1" />
        <span class="item-name">Sony DSC-RX100M III</span>
        <span class="item-price">$849.99</span>
        <span class="item-quantity">Quantity: 01</span>
      </li>

      <li class="clearfix">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item2.jpg" alt="item1" />
        <span class="item-name">KS Automatic Mechanic...</span>
        <span class="item-price">$1,249.99</span>
        <span class="item-quantity">Quantity: 01</span>
      </li>

      <li class="clearfix">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item3.jpg" alt="item1" />
        <span class="item-name">Kindle, 6" Glare-Free To...</span>
        <span class="item-price">$129.99</span>
        <span class="item-quantity">Quantity: 01</span>
      </li>
    </ul>

    <a href="#" class="button">Checkout</a>
  </div> <!--end shopping-cart -->
</div> <!--end container -->
    </form>
</body>
</html>

