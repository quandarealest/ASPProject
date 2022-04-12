<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Requests.aspx.cs" Inherits="TBayEat_GroupProject.Requests" %>
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
            color:black;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style7 {
            left: 0px;
            top: 0px;
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            padding-left: 15px;
            padding-right: 15px;
        }
        
        .bodyStyle {
            min-height: 60em;
        }
        .contentdeco {
            min-height: 60em;
        }
        hr{
            margin-left: -1.em;
            background-color:black;
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
        <div class="col-md-10 pageContentDeco contentdeco" style="background-color: #F7F7F7;">
            <h2 class="auto-style3">Manage Caterer</h2>
            <hr />
            <div class="row">
                <div class="auto-style7" style="margin-top: 1.5em; margin-left: 3em; ">                    
                    <div class="text-center">
                        <asp:SqlDataSource ID="CatererDetails" runat="server" ConnectionString="<%$ ConnectionStrings:TBayEatConnection %>" SelectCommand="SELECT UserId, UserName AS Name, Email, PhoneNumber, Approval AS Approval_Status FROM NewMemberShip AS nm WHERE (Role LIKE 'Caterer')"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="CatererDetails" AllowSorting="True" Height="265px" Width="95%" BackColor="White" DataKeyNames="UserId"  >
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" ReadOnly="True" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                <asp:BoundField DataField="Approval_Status" HeaderText="Approval_Status" SortExpression="Approval_Status" />
                            </Columns>
                            <SelectedRowStyle BackColor="#FFFF99" />
                        </asp:GridView>
                    </div>
                    <div style="margin-top: 1.5em; margin-bottom:1.5em" >
                        <asp:Button ID="btnApprove" cssclass="btnDeco" runat="server" Text="Approve" OnClick ="btnApprove_Click" BackColor="#1AC073" BorderStyle="NotSet" Height="42px" Width="108px" />
                        <asp:Button ID="btnReject" cssclass="btnDeco" runat="server" Text="Reject" OnClick="btnReject_Click" BackColor="#1AC073" BorderStyle="NotSet" Height="40px" Width="110px"/>
                    </div>
                </div>
            </div>            
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <!--bar chart-->
        </div>
    </div>
</asp:Content>
