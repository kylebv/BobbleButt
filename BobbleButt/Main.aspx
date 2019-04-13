﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PageHeader.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="BobbleButt.Main" %>



<asp:Content runat="server" ContentPlaceHolderID="Main"> 


 
<!--Author:
Use: Some of the code was used and reviewed to get the page layout for main to look correct
Website Name: W3Schools
Website Url: https://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_temp_store&stacked=h 
Date: 10/04019
-->
<!-- Image that takes up whole width of page acting as a background -->
<div class="col-sm-12">
    <img src="img/mainBackground.png" alt="Image" class="main-central-img">
</div>

<!-- Have different categories that the user can click to filter out products -->  
<h3 class="main-heading-text">Popular Categories</h3>
<div class="container pad-from-navbar">    
  <div class="row">
      <!-- 3 coloumns that place an image of a category -->
      <!-- Coloumn 1 -->
    <div class="col-sm-4">
      <div class="card"> 
            <a href="contact.aspx">
            <div class="card-header bg-secondary main-text-color main-text-hover">DC</div>
            <img src="img/DCCategory.png" class="img-responsive main-height-img" style="width:100%;" alt="Image">
            </a>
      </div>
    </div>
    <!-- Coloumn 2 -->
    <div class="col-sm-4"> 
      <div class="card"> 
            <a href="contact.aspx">
            <div class="card-header bg-secondary main-text-color main-text-hover">Disney</div>
            <img src="img/disneyCategory.png" class="img-responsive main-height-img" style="width:100%" alt="Image">
            </a>
      </div>
    </div>
    <!-- Coloumn 3 -->
    <div class="col-sm-4"> 
      <div class="card">
            <a href="contact.aspx">
            <div class="card-header bg-secondary main-text-color main-text-hover">Marvel</div>
            <img src="img/marvelCategory.png" class="img-responsive main-height-img" style="width:100%" alt="Image">
            </a>
      </div>
    </div>
  </div>
</div>

<!-- Next set of coloumns that is about trending products -->
<h3 class="main-heading-text">Trending Now</h3>
<div class="container pad-from-navbar">    
  <div class="row">
    <!-- Coloumn 1 -->
    <div class="col-sm-4">
      <div class="card main-box-color">
            <a href="contact.aspx">
            <div class="card-header bg-secondary main-text-color main-text-hover">Batman</div>
            <div class="card-body">
            <img src="img/batman.png" class="img-responsive main-height-img-product" style="width:100%" alt="Image">
            </div>
            </a>
      </div>
    </div>
      <!-- Coloumn 2 -->
    <div class="col-sm-4"> 
      <div class="card main-box-color">
            <a href="contact.aspx">
            <div class="card-header bg-secondary main-text-color main-text-hover">Batwoman</div>
            <div class="card-body">
            <img src="img/batwoman.png" class="img-responsive main-height-img-product" style="width:100%" alt="Image">
            </div>
            </a>
      </div>
    </div>
      <!-- Coloumn 3 -->
    <div class="col-sm-4"> 
      <div class="card main-box-color">
            <a href="contact.aspx">
            <div class="card-header bg-secondary main-text-color main-text-hover">Iron-man</div>
            <div class="card-body">
            <img src="img/ironMan.png" class="img-responsive main-height-img-product" style="width:100%" alt="Image">
            </div>
            </a>
      </div>
    </div>
  </div>
</div>

</asp:content>
