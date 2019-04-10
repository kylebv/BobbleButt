<%@ Page Title="" Language="C#" MasterPageFile="~/PageHeader.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="BobbleButt.Main" %>



<asp:Content runat="server" ContentPlaceHolderID="Main"> 

<div id="myCarousel" class="carousel slide" data-ride="carousel">
 

    <!-- Wrapper for slides -->
    <div class="col-sm-12">
      <div class="item active">
        <img src="https://placehold.it/1200x400?text=IMAGE" alt="Image">
        <div class="carousel-caption">
          <h3>Sell $</h3>
          <p>Money Money.</p>
        </div>      
      </div>
</div>
  
<div class="container text-center">    
  <h3 class="blue-text">Popular Categories</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <!--https://www.goodfon.com/wallpaper/justice-league-dc-comics-2290.html-->
      <a href="contact.aspx">
      <img src="img/DCCategory.png" class="img-responsive" style="width:100%" alt="Image">
      </a>
      <p class="blue-text">DC</p>
    </div>
    <div class="col-sm-4"> 
      <!--https://wall.alphacoders.com/big.php?i=512776-->
      <a href="contact.aspx">
      <img src="img/disneyCategory.png" class="img-responsive" style="width:100%" alt="Image">
      </a>
      <p class="blue-text">Disney</p>    
    </div>
    <div class="col-sm-4">
      <!--https://awallpaperspc.blogspot.com/2018/12/marvel-backgrounds-wallpaper.html-->
      <a href="contact.aspx">
      <img src="img/marvelCategory.png" class="img-responsive" style="width:100%" alt="Image">
      </a>
      <p class="blue-text">Marvel</p>
    </div>
  </div>
</div><br>

</asp:content>
