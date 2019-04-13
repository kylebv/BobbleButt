<%@ Page Title="" Language="C#" MasterPageFile="~/PageHeader.Master" AutoEventWireup="true" CodeFile="ManageItems.aspx.cs" Inherits="BobbleButt.ManageItems" %>
<%@ Import Namespace="BobbleButt" %>

<asp:Content ID="manageModification" runat="server" ContentPlaceHolderID="Main"> 

<div id="PaypalDiv" class="payment-container login-container" style="padding-bottom:35px">
            <div class="row">
                <div class="col-md-12 login-form-1">
                    <h3>Product Management</h3>
                        <!--<div class="form-group">
                        <asp:Label ID="InsertErrorMessage" runat="server" Visible="false" class="label-error">Please enter all required fields</asp:Label>
                        </div>-->
                        <div class="form-group">
                            <label>Name:</label>
                            <asp:TextBox id="manageInsertName" class="form-control" runat="server" placeholder="Product Name" value=""/>
                            <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="manageInsertName" class="label-error" ErrorMessage="Name field cannot be empty"/>
                        </div>

                        <!-- Error msg for name if input incorrectly. Currently invisible 
                        <div class="form-group">
                            <asp:Label ID="insertNameError" runat="server" Visible="false" class="label-error">Name field cannot be empty</asp:Label>
                        </div>-->

                        <div class="form-group">
                            <label>Category:</label>
                            <asp:TextBox id="manageInsertCategory" class="form-control" runat="server" placeholder="Product Category" value=""/>
                            <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="manageInsertCategory" class="label-error" ErrorMessage="Category field cannot be empty"/>
                        </div>
                        
                        <!-- Error message for Category 
                        <div class="form-group">
                            <asp:Label ID="insertCategoryError" runat="server" Visible="false" class="label-error">Category field cannot be empty</asp:Label>
                        </div>-->

                        <div class="form-group">
                            <label>Stock:</label>
                            <asp:TextBox type="number" id="manageInsertStock" class="form-control" runat="server" placeholder="Product Stock" value=""/> 
                            <asp:CompareValidator Display="Dynamic" ID="stockValidator" controlToValidate="manageInsertStock" runat="server" class="label-error" Operator="GreaterThanEqual" ValueToCompare="0" ErrorMessage="Stock field is invalid (Integer greater or equal to zero)"></asp:CompareValidator>
                            <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="manageInsertStock" class="label-error" ErrorMessage="Stock field cannot be empty"/>
                        </div>
                        
                    
                        <!-- Error message for stock 
                        <div class="form-group">
                            <asp:Label ID="insertStockError" runat="server" Visible="false" class="label-error">Stock value invalid</asp:Label>
                        </div>-->

                        <div class="form-group">
                            <label>Description:</label>
                            <asp:TextBox type="name" id="manageInsertDescription" class="form-control" runat="server" placeholder="Product Description" value=""/>
                        </div>

                        <div class="form-group">
                            <label>Price:</label>
                            <asp:TextBox type="number" id="manageInsertPrice" class="form-control" runat="server" placeholder="Product Price" value=""/>
                            <asp:CompareValidator Display="Dynamic" ID="priceValidator" controlToValidate="manageInsertPrice" runat="server" class="label-error" Operator="GreaterThanEqual" ValueToCompare="0" ErrorMessage="Price field is invalid, value must be greater or equal to zero"></asp:CompareValidator>
                            <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="manageInsertPrice" class="label-error" ErrorMessage="Price field cannot be empty"/>
                        </div>

                        <!-- Error message for Price 
                        <div class="form-group">
                            <asp:Label ID="insertPriceError" runat="server" Visible="false" class="label-error">Price value invalid</asp:Label>
                        </div>-->

                        <!-- Image Upload -->
                        <div class="form-group">
                                <label>Image:</label>
                            <!--https://asp.net-tutorials.com/controls/file-upload-control/-->
                        <asp:FileUpload id="FileUploadImg" runat="server" /> <br/>
                        <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="FileUploadImg" class="label-error" ErrorMessage="No file selected"/>
                        </div>

                        <!-- Error message for Image Upload where no file exists 
                        <div class="form-group">
                            <asp:Label ID="insertImageError" runat="server" Visible="false" class="label-error">No file has been selected</asp:Label>
                        </div>-->

                        <!-- Error message for Image Upload where wrong file type is uploaded -->
                        <div class="form-group">
                            <asp:Label ID="insertImageFileError" runat="server" Visible="false" class="label-error">Wrong file type has been uploaded</asp:Label>
                        </div>

                        <!-- Quantity -->
                        <div class="form-group">
                            <label>Quantity:</label>
                            <asp:TextBox type="number" id="manageInsertQuantity" class="form-control" runat="server" placeholder="Product Quantity" value=""/>
                            <asp:CompareValidator Display="Dynamic" ID="quantityValidator" controlToValidate="manageInsertQuantity" runat="server" class="label-error" Operator="GreaterThanEqual" ValueToCompare="0" ErrorMessage="Quantity field is invalid, value must be greater or equal to zero"></asp:CompareValidator>
                            <asp:RequiredFieldValidator display="Dynamic" runat="server" ControlToValidate="manageInsertQuantity" class="label-error" ErrorMessage="Quantity field cannot be empty"/>
                        </div>
                        
                        <!-- Error message for quantity
                        <div class="form-group">
                            <asp:Label ID="insertQuantityError" runat="server" Visible="false" class="label-error">Invalid value for quantity</asp:Label>
                        </div>-->
                        
                        

                    <!--<div class="form-group">
                        <div class="col-sm-9 col-sm-offset-3">
                            <span class="help-block">*Required fields</span>
                        </div>
                    </div>-->
                      <!--  <asp:RequiredFieldValidator runat="server" ControlToValidate="FileUploadImg"/>
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertName"/> 
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertCategory"/> 
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertStock"/>
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertPrice"/> 
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertQuantity"/> <br/>-->
                  
                          <div class="form-group">
                            <asp:Button runat="server" class="btnSubmit" text="Submit" OnClick="ManageInsertsSubmitBtn_Click"/>
                        </div>
                </div>
            </div>
</div>



</asp:Content>

