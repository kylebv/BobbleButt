<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Register.aspx.cs" Inherits="BobbleButt.Login_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BobbleButt - Login</title>
    <meta name="viewport"
        content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css"
          rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <link href="stylesheet.css" rel="stylesheet" />
    <script type=text/javascript src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    </head>
<body class="blue">
    <form id="form1" runat="server">
        <img src="img/bobblebuttlogo.png" class="img-fixed-logo" style="max-width:15%"/>
        <div class="container login-container">
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3>Sign In</h3>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Email *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Your Password *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btnSubmit" value="Login" />
                        </div>
                        <div class="form-group">
                            <a href="#" class="ForgetPwd">Forget Password?</a>
                        </div>
                </div>
                <div class="col-md-6 login-form-2">
                    <h3>Register</h3>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Email *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Your Password *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btnSubmit" value="Register" />
                        </div>
                        <div class="form-group">

                        </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
