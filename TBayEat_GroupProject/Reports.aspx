<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="TBayEat_GroupProject.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="../Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="../Style/dashboard.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
        .auto-style2 {
            left: 0px;
            top: 0px;
        }
        .auto-style3 {
            margin-left: 80px;
        }
        .contentdeco {
            min-height: 60em;
        }
        hr{
            margin-left: -1.em;
            background-color:black;
        }
        .bodyStyle {
            min-height: 50em;
        }
        .headingstyle{            
            color:black;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row bodyStyle" style="background-color: #CCCCCC;">
        <div class="col-md-2" id="sideBarDeco" style="background-color: #CCCCCC">
            <a href="HomePage.aspx" class="d-flex  mb-3 mb-md-0 me-md-auto text-white">
                <svg class="bi me-2" width="40" height="32"></svg>
                <span class="fs-4"> <b>TbayEAT</b></span> </a>
            <ul class="nav nav-sidebar">
                <<li class="nav-item"><a href="Dashboard.aspx" class="nav-link active" aria-current="page"><i class="fa fa-home"></i><span class="ms-2">Dashboard</span> </a></li>
                <li><a href="Reports.aspx" class="auto-style2"><i class="fa fa-dashboard"></i><span class="ms-2">Reports</span> </a></li>
                <li><a href="Requests.aspx" class="nav-link text-white"><i class="fa fa-first-order"></i><span class="ms-2">Request</span> </a></li>
            </ul>
        </div>
        <div class="col-md-10 contentdeco" style="background-color: #F7F7F7;">
            <h2 class="auto-style3">Reports</h2>
            <hr />
            <div class="row">
                <div class="col-md-12 " style="margin-top: 1.5em; margin-left: 3em;">
                    <h3 class="headingstyle">Order History</h3>
                    <div class="text-center">
                        <asp:SqlDataSource ID="OrderDetails" runat="server" ConnectionString="<%$ ConnectionStrings:TBayEatConnection %>" SelectCommand="SELECT OrderId, Customer, Email, Name AS [Package Details], SUM(TotalAmount) AS Amount FROM (SELECT CAST(nm.UserName AS nvarchar(150)) AS Customer, nm.Email, o.OrderId, p.Name, o.TotalAmount FROM NewMemberShip AS nm INNER JOIN Customer_Order AS co ON nm.UserId = co.UserId INNER JOIN Orders AS o ON co.OrderId = o.OrderId INNER JOIN Order_Packages AS op ON o.OrderId = op.OrderId INNER JOIN Packages AS p ON op.PackageId = p.PackageId INNER JOIN Package_Item AS pi ON p.PackageId = pi.PackageItemId INNER JOIN Items AS i ON pi.ItemId = i.ItemId) AS OrderDetails GROUP BY OrderId, Customer, Email, Name"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" Class="OrderDetails" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="OrderDetails" Height="281px" Width="90%" BackColor="#C4C4FF">
                            <Columns>
                                <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" SortExpression="OrderId" HeaderStyle-Wrap="False" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="Customer" HeaderText="Customer" SortExpression="Customer" ReadOnly="True" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Package Details" HeaderText="Package Details" SortExpression="Package Details" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" ReadOnly="True" SortExpression="Amount" />
                            </Columns>
                            <HeaderStyle Width="20px" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div class="row">                
                <div class="col-md-12" style="margin-top: 1.5em; margin-left: 3em;">
                    <h3 class="auto-style">Restaurant Reports</h3>
                    <asp:SqlDataSource ID="RestaurantDetails" runat="server" ConnectionString="<%$ ConnectionStrings:TBayEatConnection %>" SelectCommand="SELECT nm.UserName AS Owner, cd.Description AS [Restaurant Name], cd.PhoneNumber AS [Phone Number], cd.Address, cd.JoiningDate AS [Joined Date] FROM Caterer_Details AS cd INNER JOIN NewMemberShip AS nm ON cd.UserId = nm.UserId"></asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="RestaurantDetails" Height="281px" Width="90%" BackColor="#FFE7CE"></asp:GridView>
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <!--bar chart-->
        </div>
    </div>
</asp:Content>
