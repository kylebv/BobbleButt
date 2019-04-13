<%@ Page Language="C#" MasterPageFile="~/PageHeader.Master" AutoEventWireup="true" CodeBehind="PurchaseProduct.aspx.cs" Inherits="BobbleButt.PurchaseProduct" %>
<%@ Import Namespace="BobbleButt" %>
<asp:Content runat="server" ContentPlaceHolderID="Main"> 
  <!-- Page Content -->

<asp:Label runat="server" Text="" ID="productNumber" Visible="false"/>
  <!--<div class="container">

    <div class="row">-->

     
      <!-- /.col-lg-3 -->
        <!--https://startbootstrap.com/templates/shop-item/-->
      <!--<div class="col-lg-4">

        <div class="card mt-4">
          <asp:image runat="server" id="productImage" class="card-img-top img-fluid" alt=""/>
          <div class="card-body">
            <h3 class ="card-title">
            <asp:Label runat="server"  id="productHead" class="card-title" Text="Product Name"/><br/>
            </h3>
            <asp:Label runat="server"  id="productPrice" Text="Product Price"/>
            <p class="card-text">
            <asp:Label runat="server"  id="productDescription" class="card-text" Text="Product Description"/>
            </p>
          </div>
        </div>
        <!-- /.card -->

        

     <!-- </div> --> 
      <!-- /.col-lg-9 -->

    <!-- </div> -->

  <!-- </div> --> 
  <!-- /.container -->



<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-12">
					<div class="product col-md-3 card mt-4"">
                        <asp:image runat="server" id="productViewImage" class="card-img-top img-fluid" alt=""/>
					</div>
				
				</div>
					
				<div class="col-md-7">
                    <h3>
					<div><asp:Label runat="server"  id="productViewName" class="product-title" Text="Product Name"/><br/></div></h3>
					<div><asp:Label runat="server"  id="productViewDescription" class="card-text" Text="Product Description"/></div>
					<hr>
					<div><asp:Label runat="server"  id="productViewPrice" Text="Product Price"/></div>
					<div>In Stock</div>
					<hr>
					<div class="btn-group cart">
						<asp:button runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" class="btn btn-success"/>

					</div>
		
				</div>
			</div> 
		</div>

	</div>
</div>
</asp:Content>