<%@ Page Title="" Language="C#" MasterPageFile="~/PageHeader.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="BobbleButt.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="container login-container login-form-2 reg-form">
            <h3>Update Product</h3>
        <div class="form-group">
                <asp:Label ID="errorMessage" runat="server" Visible="false" class="label-error">Please enter all required fields</asp:Label>
                <div class="col-sm-6">
                    <asp:TextBox runat="server"  id="productUpdateName" placeholder="Product Name"  class="form-control" />
                    <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="productUpdateName" class="label-error" ErrorMessage="Name field cannot be empty"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6">
                    <asp:TextBox runat="server"  id="productUpdateCategory" placeholder="Product Category" class="form-control"/>
                    <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="productUpdateCategory" class="label-error" ErrorMessage="Category field cannot be empty"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-4">
                    <asp:TextBox runat="server" type="number"  id="productUpdateStock" placeholder="Product Stock" class="form-control"/>
                    <asp:CompareValidator Display="Dynamic" ID="stockValidator" controlToValidate="productUpdateStock" runat="server" class="label-error" Operator="GreaterThanEqual" ValueToCompare="0" ErrorMessage="Stock field is invalid (Integer greater or equal to zero)"></asp:CompareValidator>
                     <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="productUpdateStock" class="label-error" ErrorMessage="Stock field cannot be empty"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-9">
                    <asp:TextBox runat="server" id="productUpdateDescription" placeholder="Product Description" class="form-control"/>
                </div>
            </div>
            
        <div class="form-group">
                <div class="col-sm-4">
                    <asp:TextBox runat="server" type="number" id="productUpdatePrice" placeholder="Product Price" class="form-control"/>
                    <asp:CompareValidator Display="Dynamic" ID="priceValidator" controlToValidate="productUpdatePrice" runat="server" class="label-error" Operator="GreaterThanEqual" ValueToCompare="0" ErrorMessage="Price field is invalid, value must be greater or equal to zero"></asp:CompareValidator>
                    <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="productUpdatePrice" class="label-error" ErrorMessage="Price field cannot be empty"/>
                </div>
            </div>
            <!--<div class="form-group">
                <div class="col-sm-6">
                    <asp:TextBox runat="server" id="productImage" placeholder="Product Image" class="form-control"/>
                </div>
            </div>-->
        <div class="form-group">
                            <label>Image:</label>
                           <asp:FileUpload id="updateFileUploadImg" runat="server" /> <br/>
                           <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="updateFileUploadImg" class="label-error" ErrorMessage="No file selected"/>
             </div>

        <!-- Error message for Image Upload where wrong file type is uploaded -->
                        <div class="form-group">
                            <asp:Label ID="updateImageFileError" runat="server" Visible="false" class="label-error">Wrong file type has been uploaded</asp:Label>
                        </div>

            <div class="form-group">
                <div class="col-sm-4">
                    <asp:TextBox runat="server" type="number" id="productUpdateQuantity" placeholder="Product Quantity" class="form-control"/>
                    <asp:CompareValidator Display="Dynamic" ID="quantityValidator" controlToValidate="productUpdateQuantity" runat="server" class="label-error" Operator="GreaterThanEqual" ValueToCompare="0" ErrorMessage="Quantity field is invalid, value must be greater or equal to zero"></asp:CompareValidator>
                    <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="productUpdateQuantity" class="label-error" ErrorMessage="Quantity field cannot be empty"/>
                </div>
            </div>
       
        <asp:RequiredFieldValidator runat="server" controltovalidate="productUpdateName"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productUpdateCategory"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productUpdateStock"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productUpdateDescription"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productUpdatePrice"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="updateFileUploadImg"/>
        <asp:RequiredFieldValidator runat="server" controltovalidate="productUpdateQuantity"/>

                        <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <span class="help-block text-white">*Required fields</span>
                </div>
            </div>
            <asp:Button runat="server" class="btn btnSubmit btn-block" OnClick="updateConfirmBtn_Clicked" Text="Confirm"/>
        </div>
</asp:Content>

