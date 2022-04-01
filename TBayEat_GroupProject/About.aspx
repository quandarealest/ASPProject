<%@ Page Title="About" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TBayEat_GroupProject.About" %>

<asp:Content ID="about" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet"/>
    <link href="./Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="./Style/homepage.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

        <style type="text/css">
            .auto-style2 {
                height: 398px;
                margin-top: 74px;
                width: 1377px;
            }
            .auto-style3 {
                width: 1335px;
                height: 286px;
            }
            </style>
</asp:Content>
<asp:Content ID="mainpage" ContentPlaceHolderID="body" runat="server">
         <div class="bannerWrapper">
            <div>
                <div>
                    <h2 class="title">Authentic local food in Tbay</h2>
                    <p class="subtitle">TBayEat is a courier service in which authentic home cook food is delived to a customer</p>
                </div>
                <div class="searchWrapper">
                    <form class="form-inline" method="POST">
                        <input class="form-control mr-sm-2 searchBox" type="search" placeholder="Search food you love" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0 searchBtn" type="submit">Search</button>
                    </form>
                </div>
            </div>
            <div>
                <img src="./images/cuate.png" style="clip: rect(auto, auto, auto, 20px)" />
            </div>
               </div>
    <div class="w3-padding-top-64">
<div class="w3-row">

<div class="w3-half w3-padding-large w3-hide-small">
<img src="images/img.jpg"  class="w3-round w3-image w3-opacity-min" alt="Table" style="width:100%">
</div>
    
<div class="w3-half w3-padding-large">
<h1 class="w3-center" style="font-weight: bolder; color: green">About Us</h1><br>
<h5 class="w3-center" style="color: green; font-style: italic; font-weight: bold;">We care better , we cater best !</h5>
<p class="w3-large" style="color: green">
A collaborative online catering system (COCS) that enables you toplace a catering order for your special events from multiple registered caterers.Only registered customers are able to place a catering order, but any customer can view the menu items for each vendor, special offers, and list of caterers.
</p><br />
<p class="w3-large w3-text-green w3-hide-medium" style="color: green">
Our system has few common pages/features and three mainmodules, Admin, vendor, and customer modules.
</div>

</div>
</div>
                              

    
</asp:Content>
