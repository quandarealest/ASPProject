<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TBayEat_GroupProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet"/>
    <link href="../Style/Main.css" rel="stylesheet" type="text/css" /></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="col-md-12">
        <asp:Login ID="Login1" runat="server">
            <LoginButtonStyle BorderColor="#009933" />
        </asp:Login>
    </div>
</asp:Content>
