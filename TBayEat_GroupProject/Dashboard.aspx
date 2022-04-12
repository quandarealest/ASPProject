<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="TBayEat_GroupProject.Dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <!--<link href="../Style/Main.css" rel="stylesheet" type="text/css" />-->
    <link href="../Style/dashboard.css" rel="stylesheet" type="text/css" />
    <style type="text/css">    
        .headingstyle{            
            color:black;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }      
        .bodyStyle {
            min-height: 50em;
        }
        .borderStyle{
            margin-right: 3em;
        }
        hr{
            margin-left: -1.em;
            background-color:black;
        }
        .contentdeco {
            min-height: 60em;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!--<div class="container">-->
        <div class="row bodyStyle" style="background-color: #C0C0C0;">
            <div class="col-md-2" id="sideBarDeco" style="background-color: #C0C0C0">
                <a href="HomePage.aspx" class="d-flex  mb-3 mb-md-0 me-md-auto text-white">
                    <svg class="bi me-2" width="40" height="32"></svg>
                    <span class="fs-4"><b>TbayEAT</b></span> </a>
                <ul class="nav nav-sidebar">
                    <li class="nav-item"><a href="Dashboard.aspx" class="nav-link active" aria-current="page"><i class="fa fa-home"></i><span class="ms-2">Dashboard</span> </a></li>
                    <li><a href="Reports.aspx" class="auto-style2"><i class="fa fa-dashboard"></i><span class="ms-2">Reports</span> </a></li>
                    <li><a href="Requests.aspx" class="nav-link text-white"><i class="fa fa-first-order"></i><span class="ms-2">Request</span> </a></li>
                </ul>
            </div>
            <div class="col-md-10 contentdeco" style="background-color: #F7F7F7;">
                <div class="row">
                    <div class="col-md-12" style="margin-top: 1.5em; margin-left: 3em;">
                        <h2 class="headingstyle">Dashboard</h2>
                        <hr />
                        <div class="col-md-4 borderStyle" style="background-color: #FFFF00; width: 25em; height: 20em; padding-top: 7em; text-align: center;">
                            <asp:Label ID="lblNumOrders" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                            <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: x-large; font-weight: bold;">Total Orders</p>
                        </div>
                        <div class="col-md-4 borderStyle" style="background-color: #CC66FF; width: 25em; height: 20em; padding-top: 7em; text-align: center;">
                            <asp:Label ID="lblCompletedOrders" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                            <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: x-large; font-weight: bold;">Completed Orders</p>
                        </div>
                        <div class="col-md-4 borderStyle" style="background-color: #6666FF; width: 25em; height: 20em; padding-top: 7em; text-align: center;">
                            <asp:Label ID="lblInprogressOrders" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                            <p style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: x-large; font-weight: bold;">In progress Orders</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-7" style="margin-top: 1.5em; margin-left: 3em; margin-bottom: 2em;">
                        <h3 class="headingstyle">Customer & Caterer</h3>
                        <asp:SqlDataSource ID="UserDetails" runat="server" ConnectionString="<%$ ConnectionStrings:TBayEatConnection %>" SelectCommand="SELECT UserRole, COUNT(*) AS Number_of_Users FROM (SELECT CAST(Role AS nvarchar(50)) AS UserRole FROM NewMemberShip AS ms WHERE (Role NOT LIKE 'Admin')) AS UserDetails GROUP BY UserRole"></asp:SqlDataSource>
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="UserDetails">
                            <Series>
                                <asp:Series Name="Series1" ChartType="Doughnut" YValueMembers="Number_of_Users" XValueMember="UserRole"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                    </div>
                    <div class="col-md-5">
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
    <!--</div>-->
</asp:Content>

