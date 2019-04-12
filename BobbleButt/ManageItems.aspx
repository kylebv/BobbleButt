<%@ Page Title="" Language="C#" MasterPageFile="~/PageHeader.Master" AutoEventWireup="true" CodeBehind="ManageItems.aspx.cs" Inherits="BobbleButt.ManageItems" %>
<%@ Import Namespace="BobbleButt" %>

<asp:Content ID="manageModification" runat="server" ContentPlaceHolderID="Main"> 

    <div class="payment-container login-container">
            <div class="row">
                <div class="col-md-12 login-form-1">
                    <h3>Product Management</h3>
                        <label> Select Modification: </label>
                        <div class="form-group">
                            <label>
                            <asp:Button id="insertBtnSwitch" runat="server" Text="Insert"/>
                            <span class="glyphicon glyphicon-ok"></span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label>
                            <asp:Button id="updateBtnSwitch" runat="server" Text="Update"/>
                                <span class="glyphicon glyphicon-ok"></span>
                            </label>
                        </div>
                    <hr/>
                </div>
            </div>
</div>
<div id="PaypalDiv" class="payment-container login-container" style="padding-bottom:35px">
            <div class="row">
                <div class="col-md-12 login-form-1">
                        <div class="form-group">
                            <label>Name:</label>
                            <asp:TextBox id="manageInsertName" class="form-control" runat="server" placeholder="Product Name" value=""/>
                        </div>

                        <!-- Error msg for name if input incorrectly. Currently invisible -->
                        <div class="form-group">
                            <asp:Label ID="insertNameError" runat="server" Visible="false" class="label-error">Name field cannot be empty</asp:Label>
                        </div>

                        <div class="form-group">
                            <label>Category:</label>
                            <asp:TextBox id="manageInsertCategory" class="form-control" runat="server" placeholder="Product Category" value=""/>
                        </div>
                        
                        <!-- Error message for Category -->
                        <div class="form-group">
                            <asp:Label ID="insertCategoryError" runat="server" Visible="false" class="label-error">Category field cannot be empty</asp:Label>
                        </div>

                        <div class="form-group">
                            <label>Stock:</label>
                            <asp:TextBox type="number" id="manageInsertStock" class="form-control" runat="server" placeholder="Product Stock" value=""/>
                        </div>
                        
                        <!-- Error message for stock -->
                        <div class="form-group">
                            <asp:Label ID="insertStockError" runat="server" Visible="false" class="label-error">Stock value invalid</asp:Label>
                        </div>

                        <div class="form-group">
                            <label>Description:</label>
                            <asp:TextBox type="name" id="manageInsertDescription" class="form-control" runat="server" placeholder="Product Description" value=""/>
                        </div>

                        <div class="form-group">
                            <label>Price:</label>
                            <asp:TextBox type="number" id="manageInsertPrice" class="form-control" runat="server" placeholder="Product Price" value=""/>
                        </div>

                        <!-- Error message for Price -->
                        <div class="form-group">
                            <asp:Label ID="insertPriceError" runat="server" Visible="false" class="label-error">Price value invalid</asp:Label>
                        </div>

                        <!-- Image Upload -->
                        <div class="form-group">
                                <label>Image:</label>
                            <!--https://asp.net-tutorials.com/controls/file-upload-control/-->
                        <asp:FileUpload id="FileUploadImg" runat="server" />
                        </div>

                        <!-- Error message for Image Upload where no file exists -->
                        <div class="form-group">
                            <asp:Label ID="insertImageError" runat="server" Visible="false" class="label-error">No file has been selected</asp:Label>
                        </div>

                        <!-- Error message for Image Upload where wrong file type is uploaded -->
                        <div class="form-group">
                            <asp:Label ID="insertImageFileError" runat="server" Visible="false" class="label-error">Wrong file type has been uploaded</asp:Label>
                        </div>

                        <!-- Quantity -->
                        <div class="form-group">
                            <label>Quantity:</label>
                            <asp:TextBox type="number" id="manageInsertQuantity" class="form-control" runat="server" placeholder="Product Quantity" value=""/>
                        </div>
                        
                        <!-- Error message for quantity --> 
                        <div class="form-group">
                            <asp:Label ID="insertQuantityError" runat="server" Visible="false" class="label-error">Invalid value for quantity</asp:Label>
                        </div>
                        
                        

                    <div class="form-group">
                        <div class="col-sm-9 col-sm-offset-3">
                            <span class="help-block">*Required fields</span>
                        </div>
                    </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FileUploadImg" ErrorMessage ="No File, "/>
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertName" ErrorMessage="Name, "/> 
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertCategory" ErrorMessage="Category, "/> 
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertStock" ErrorMessage="Stock, "/> 
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertPrice" ErrorMessage="Price, "/> 
                        <asp:RequiredFieldValidator runat="server" controltovalidate="manageInsertQuantity" ErrorMessage="Quantity"/> <br/>
                    <div class="form-group">
                            <asp:Button runat="server" onClick="ManageInsertsCancelBtn_Click" class="btnSubmit" text="Cancel"/>
                        </div>
                          <div class="form-group">
                            <asp:Button runat="server" class="btnSubmit" text="Submit" OnClick="ManageInsertsSubmitBtn_Click"/>
                        </div>
                </div>
            </div>
</div>
<!--<div id="CreditCardDiv" class="payment-container login-container payment-invisible">
            <div class="row">
                <div class="col-md-12 login-form-1">
                        <div class="form-group">
                            <label>Card Number:</label>
                            <asp:TextBox class="form-control" type="number" runat="server" placeholder="Card Number"/>
                        </div>
                </div>
            </div>
  </div> -->



</asp:Content>

