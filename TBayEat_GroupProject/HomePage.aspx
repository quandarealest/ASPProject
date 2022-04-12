<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TBayEat_GroupProject.HomePage" %>
<asp:Content ID="homePage" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet"/>
    <link href="./Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="./Style/homepage.css" rel="stylesheet" type="text/css" />
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
    <div class="contentWrapper">
        <p>Trending Today</p>
        <div class="optionList">
            <button type="button" class="btn btn-default">All</button>
            <button type="button" class="btn btn-default">Offers</button>
            <button type="button" class="btn btn-default">Free Delivery</button>
            <button type="button" class="btn btn-default">New</button>
            <button type="button" class="btn btn-default">Coming</button>
        </div>
        <div class="dropdown">
          <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            Filters
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </div>
        <asp:Label runat="server" ID="testing">Hello</asp:Label>
        <div class="foodContent">         
            <asp:Repeater ID="DataLoadRepeater" runat="server">
                <ItemTemplate>
                    <div id="<%#DataBinder.Eval(Container, "DataItem.ItemId") %>"" class="foodComponentWrapper">
                        <a href="ProductDetails.aspx?productID=<%#DataBinder.Eval(Container, "DataItem.ItemId") %>">
                         <img src="./images/sample3.png" />
                        <div class="component">
                            <div>
                                <span class="name">
                                    <%#DataBinder.Eval(Container, "DataItem.Name") %>
                                </span>
                                <span class="price">
                                    $<%#DataBinder.Eval(Container, "DataItem.Price") %></span></div>
                            <div>
                                <div class="rating">
                                    <span class="glyphicon glyphicon-star"></span>4.7
                                </div>
                                <div class="timing">
                                    50-79 mins
                                </div>
                                <div class="add">
                                    <span class="glyphicon glyphicon-plus"></span>
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>
                    </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="contactWrapper">
        <div>
            <form class="form-inline" action="HomePage.aspx" method="post">
                <div>
                    <h3 class="contactTitle">
                        Do you have a question or want to become a seller?
                    </h3>
                    <p>
                        Fill this form and our manager will contact you next 48 hours.
                    </p>
                </div>
                <div class="row contactRow">
                    <div class="form-group form-group-lg">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Your Name">
                </div>
                <div class="form-group form-group-lg">
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                </div>
                </div>
                <div class="row form-group-lg contactRow">
                    <textarea placeholder="Your Message" class="form-control  contactTextArea" name="message" id="message" rows="10"></textarea>

                </div>
            </form>
        </div>
        <div>
             <img src="./images/contactus.png" style="clip: rect(auto, auto, auto, 20px)" />
        </div>
    </div>

</asp:Content>
