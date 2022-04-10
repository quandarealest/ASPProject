<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="CatererProfile.aspx.cs" Inherits="TBayEat_GroupProject.CatererProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet"/>
     <link href="../Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="../Style/reset.css" rel="stylesheet" type="text/css" />    
    <link href="../Style/catererprofile.css" rel="stylesheet" />
    <link href="../Style/homepage.css" rel="stylesheet" type="text/css" />
    
   
    </asp:Content>
<asp:Content  ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div >
                 <img src="./images/image.png" style="clip: rect(auto, auto, auto, 20px); width: 1440px; height: 500px; top: 80px;" />

    </div>
         <div  align="center"  style="position: relative; top: 20px" >
     <asp:Button ID="Button4" runat="server" Text="Profile" BorderStyle="None" CssClass="btn" width="150px" ForeColor="#FFCC00" Height="30px" BackColor="White" BorderColor="#FFCC00"/>
     <asp:Button ID="Button2" runat="server" Text="Order" BorderStyle="None" CssClass="btn" width="150px"  ForeColor="#FFCC00" Height="30px" BackColor="White" BorderColor="#FFCC00" />

    <asp:Button ID="Button1" runat="server" Text="Management" CssClass="btn" width="150px"  ForeColor="#FFCC00" Height="30px" top="30px" BackColor="White" BorderColor="#FFCC00" BorderStyle="None" />
    <asp:Button ID="Button3" runat="server" Text="Setting" CssClass="btn" width="150px"  ForeColor="#FFCC00" Height="30px" BackColor="White" BorderColor="#FFCC00" BorderStyle="None" />
             </div>
  <div class="row" style="position: relative; top: 20px" >         
 <div align="left"> 

<div class="col-md-6">
<h2 style="color:#00cc70"  align="center" >Your Restaurant</h2>
    <table class="table">
        <tr>
            <td style="border-color: #FFFFFF" >
                 <img src="./images/download.jpg" style="clip: rect(auto, auto, auto, 20px)" />
                </td></tr>
        

        <tr>
            <td style="border-color: #FFFFFF">
    <asp:TextBox runat="server" Width="500px" Height="45px"  ForeColor="#00CC00" BackColor="#F0FAF7" BorderStyle="None" Padding="33px" >RestaurantName</asp:TextBox>
                </td></tr>
        <tr>
            <td style=" border-color: #FFFFFF" >
    <asp:TextBox runat="server"  Width="500px"  Height="45px" ForeColor="#00CC00" BackColor="#F0FAF7" BorderStyle="None">Address</asp:TextBox>
                </td></tr>
    
        <tr>
            <td  style=" border-color: #FFFFFF">
    <asp:TextBox runat="server"  Width="500px"  Height="45px" ForeColor="#00CC00" BackColor="#F0FAF7" BorderStyle="None">phonenumber</asp:TextBox>
                </td></tr>
        <tr>
            <td  style=" border-color: #FFFFFF">
    <asp:TextBox runat="server"  Width="500px"  Height="45px" ForeColor="#00CC00" BackColor="#F0FAF7" BorderStyle="None">join date</asp:TextBox>
                </td></tr>
        <tr>
           
            <td  style=" border-color: #FFFFFF">
<asp:Button runat="server" Text="Edit" Width="500px" BackColor="#00CC70" BorderStyle="None" ForeColor="White"></asp:Button>
                </td></tr>
    
    
    
    
        </table>

    </div>
     </div><div align="right">
             <div class="col-md-4">
<h2 style="color:#00cc70" align="center">Profile Information</h2>
     <table class="table" >
        <tr>
            <td  style=" border-color: #FFFFFF" class="auto-style8" >
   
    <asp:TextBox runat="server"  Width="500px"  Height="45px" ForeColor="#00CC00" BackColor="#F0FAF7" BorderStyle="None"  >UserName</asp:TextBox>
                </td></tr>
        <tr>
            <td  style=" border-color: #FFFFFF" class="auto-style8">
    <asp:TextBox runat="server"   Width="500px" Height="45px" ForeColor="#00CC00" BackColor="#F0FAF7" BorderStyle="None" >Password</asp:TextBox>
                </td></tr>
    
        <tr>
            <td  style=" border-color: #FFFFFF">
    <asp:TextBox runat="server"  Width="500px"  Height="45px" ForeColor="#00CC00" BackColor="#F0FAF7" BorderStyle="None">phonenumber</asp:TextBox>
                </td></tr>
        <tr>
            <td  style=" border-color: #FFFFFF" >
    <asp:TextBox runat="server"  Width="500px"  Height="45px" ForeColor="#00CC00" BackColor="#F0FAF7" BorderStyle="None">Dob</asp:TextBox>
                </td></tr>
         <tr>
            <td  style=" border-color: #FFFFFF">
    <asp:TextBox runat="server"  Width="500px" Height="30px" ForeColor="#00CC00" BackColor="#F0FAF7" BorderStyle="None">Email</asp:TextBox>
                </td></tr>
        
         <tr>
            <td  style=" border-color: #FFFFFF">

                <asp:Button runat="server" Text="Edit"  Width="500px" BackColor="#00CC70" BorderStyle="None" ForeColor="White"></asp:Button>
                </td></tr>
        
    
    
        </table>
</div>

</div>
</div>
 

      
     
       
   
</asp:Content>
