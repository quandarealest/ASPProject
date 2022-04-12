<%@ Page Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="TBayEat_GroupProject.ProductDetails" %>

<asp:Content ID="productDetailHeader" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet"/>
    <link href="./Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="./Style/homepage.css" rel="stylesheet" type="text/css" />
    <link href="./Style/detail.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="detailMainPage" ContentPlaceHolderID="body" runat="server">
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
    <asp:FormView ID="productDetail" ItemType="TBayEat_GroupProject.ProductInfo" runat="server" SelectMethod="productDetail_GetItem" RenderOuterTable="false">
        <ItemTemplate>
            <div class="detailPageWrapper">
                <div class="imgContainer">
                    <img src="./images/sample3.png" />
                </div>
                <div class="detailWrapper">
                    <h1><%#:Item.Name %></h1>
                    <p><%#: Item.Price %></p>
                    <p><%#: Item.Description %></p>
                    <div>
                        <div class="input-group">
                            <span class="input-group-btn">
                                <button type="button" class="quantity-left-minus btn btn-danger btn-number"  data-type="minus" data-field="">
                                    <span class="glyphicon glyphicon-minus"></span>
                                </button>
                            </span>
                            <input type="text" id="quantity" name="quantity" class="form-control input-number" value="10" min="1" max="100">
                            <span class="input-group-btn">
                                <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus" data-field="">
                                    <span class="glyphicon glyphicon-plus"></span>
                                </button>
                            </span>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default btn-sm">  
                        <span class="glyphicon glyphicon-shopping-cart">  
                        </span> <b> Add to Cart </b>  
                    </button>  
                </div>
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

