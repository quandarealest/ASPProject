<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="TBayEat_GroupProject.Dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="./Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="./Style/dashboard.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            margin-right: 5px;
        }

        .auto-style2 {
            left: 0px;
            top: 0px;
        }
        .auto-style3 {
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!--<div class="container"> -->
    <div class="row " style="background-color: #CCCCCC;">
        <div class="col-md-2" id="sideBarDeco" style="background-color: #A6A6A6">
            <a href="/" class="d-flex  mb-3 mb-md-0 me-md-auto text-white">
                <svg class="bi me-2" width="40" height="32"></svg>
                <span class="fs-4"> <b>TbayEAT</b></span> </a>
            <ul class="nav nav-sidebar">
                <li class="nav-item"><a href="#" class="nav-link active" aria-current="page"><i class="fa fa-home"></i><span class="ms-2">Dashboard</span> </a></li>
                <li><a href="#" class="auto-style2"><i class="fa fa-dashboard"></i><span class="ms-2">Reports</span> </a></li>
                <li><a href="#" class="nav-link text-white"><i class="fa fa-first-order"></i><span class="ms-2">Request</span> </a></li>
            </ul>
        </div>
        <div class="col-md-10 pageContentDeco" style="background-color: #CCCCCC;">
            <h2 class="auto-style3">Dashboard</h2>
            <hr />
            <div class="row">
                <div class="col-md-12" style="margin-top: 1.5em; margin-left: 3em;">
                    <asp:SqlDataSource ID="SqlDataSourceCustomerDetails" runat="server" ConnectionString="<%$ ConnectionStrings:TBayEatConnection %>" SelectCommand="SELECT UserName, Email, PhoneNumber, DOB, Image FROM NewMemberShip WHERE (Approval = 1)"></asp:SqlDataSource>
                    <div class="text-center">
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="SqlDataSourceCustomerDetails" Height="156px" Width="870px" style="background-color:white;">
                            <Columns>
                                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-7" style="margin-top: 1.5em; margin-left: 3em;">
                    <asp:SqlDataSource ID="SqlDataSourcePackagedetails" runat="server" ConnectionString="<%$ ConnectionStrings:TBayEatConnection %>" SelectCommand="select p.Description,(i.Price*pi.Quantity) as Total_Price from Items i, Package_Items pi, Packages p
where i.ItemId = pi.itemID and pi.packageID = p.PackageId"></asp:SqlDataSource>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourcePackagedetails" Palette="SeaGreen" Width="472px">
                        <Series>
                            <asp:Series Name="Series1" YValuesPerPoint="2" XValueMember="Description" YValueMembers="Total_Price"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </div>
                <div class="col-md-5">
                    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TBayEatConnection %>" SelectCommand="SELECT UserName, Email, PhoneNumber, DOB FROM NewMemberShip WHERE (Role LIKE 'Customer')"></asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSourceCustomer"></asp:GridView>
                </div>
            </div>
            <div class="row">
                <div class="col-md-7">
                </div>
                <div class="col-md-5">
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <!--bar chart-->
        </div>
    </div>
</asp:Content>

