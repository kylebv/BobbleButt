<%@ Page Title="" Language="C#" MasterPageFile="~/PageHeader.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="BobbleButt.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="container login-container login-form-2 reg-form">
            <h3>Update Product</h3>
        <div class="form-group">
                <asp:Label ID="errorMessage" runat="server" Visible="false" class="label-error">Please enter all required fields</asp:Label>
                <div class="col-sm-6">
                    <asp:TextBox runat="server"  id="productName" placeholder="Product Name"  class="form-control" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6">
                    <asp:TextBox runat="server"  id="productCategory" placeholder="Product Category" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-4">
                    <asp:TextBox runat="server"  id="productStock" placeholder="Product Stock" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-9">
                    <asp:TextBox runat="server" id="productDescription" placeholder="Product Description" class="form-control"/>
                </div>
            </div>
            
        <div class="form-group">
                <div class="col-sm-4">
                    <asp:TextBox runat="server" id="productPrice" placeholder="Product Price" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6">
                    <asp:TextBox runat="server" id="productImage" placeholder="Product Image" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-4">
                    <asp:TextBox runat="server" id="productQuantity" placeholder="Product Quantity" class="form-control"/>
                </div>
            </div>
       <!--
        <asp:RequiredFieldValidator runat="server" controltovalidate="productName"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productCategory"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productStock"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productDescription"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productPrice"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productImage"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productQuantity"/>-->

                        <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <span class="help-block text-white">*Required fields</span>
                </div>
            </div>
            <asp:Button runat="server" class="btn btnSubmit btn-block" Text="Confirm"/>
        </div>
</asp:Content>

