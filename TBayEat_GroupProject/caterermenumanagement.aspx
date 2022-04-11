<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="CatererProfile.aspx.cs" Inherits="TBayEat_GroupProject.CatererProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <a href="caterermenumanagement.aspx">caterermenumanagement.aspx</a>nat="server">
    <link href="Content/bootstrap.css" rel="stylesheet"/>
     <link href="../Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="../Style/homepage.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../Style/stylesheet2.css" />
    
 </asp:Content>
<asp:Content  ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div >
                 <img src="./images/image.png" style="clip: rect(auto, auto, auto, 20px); width: 1440px; height: 500px; top: 80px;" />

    </div>
         <div  align="center"  style="position: relative; top: 20px" >
     <asp:Button ID="Button4" runat="server" Text="Profile" BorderStyle="None" CssClass="btn-link" width="150px" ForeColor="#FFCC00" Height="30px" BackColor="White" BorderColor="#FFCC00"/>
     <asp:Button ID="Button2" runat="server" Text="Order" BorderStyle="None" CssClass="btn-link" width="150px"  ForeColor="#FFCC00" Height="30px" BackColor="White" BorderColor="#FFCC00" />

    <asp:Button ID="Button1" runat="server" Text="Management" CssClass="btn-link" width="150px"  ForeColor="#FFCC00" Height="30px" top="30px" BackColor="White" BorderColor="#FFCC00" BorderStyle="None" />
    <asp:Button ID="Button3" runat="server" Text="Setting" CssClass="btn-link" width="150px"  ForeColor="#FFCC00" Height="30px" BackColor="White" BorderColor="#FFCC00" BorderStyle="None" />
             </div>
    <div class="row" top="10px"  >

<div class="col-md-6" >

<h2 style="color:#00cc70"  align="center" >Single item</h2>
  <table id="tables" style="width: 50%; margin-left: 20px; margin-right:auto; border: 1px solid #ddd; left: 20px;">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand" >
                <ItemTemplate>
                
                <table style="width: 100%; padding: 2px;margin-left:40px">
                    <tr >
                <td  >
                    <table >
                        <tr>
                            <td  style="background-color: #F0FAF7; padding:10px">
                                <asp:Image ID="Image1" height="140px" width="140px" runat="server" ImageUrl='<%# Eval("image") %>' />
                            </td>
                            <td  style="background-color: #F0FAF7; padding:10px;width:305.6px">
                                <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                                <asp:Label ID="lblDBname" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br/>
                                <br/>
                                <asp:Label ID="lblPrice" runat="server" Text="Price: "></asp:Label>
                                <asp:Label ID="lblDBPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br/><br/>
                                <asp:Label ID="lblDesciption" runat="server" Text="Description: "></asp:Label>
                                <asp:Label ID="lblDBDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                
                            </td>
                        </tr>
                    </table>
                </td>
                </tr>
                </table>

                </ItemTemplate>
                </asp:Repeater>
                     <tr  >
                    <td align="center" style="padding:10px;">
                        <asp:Button ID="Button5" runat="server" Text="Item" BackColor="#FFCC00" Style="border: solid 1px #ddd;margin-left:40px;margin-top:10px"
                                    Height="30px" Width="466.6px" /><br />
                     
                        <asp:Button ID="Button6" runat="server" Text="Save" 
                            BackColor="#00CC79" Style="border: solid 1px #ddd;margin-left:40px;margin-top:10px;margin-bottom:10px"
                                    Height="30px" Width="466.6px" />

                    </td>
                </tr>
        
   </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBayEatConnection %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>
       
    </div>
        <div align="right">
             <div class="col-md-4">
<h2 style="color:#00cc70" align="center">Combos</h2>


<table id="tables2" style="width: 50%; margin-left: 20px; margin-right:auto; border: 1px solid #ddd; left: 20px;">
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="Repeater1_ItemCommand" >
                <ItemTemplate>
                
                <table style="width: 100%; padding: 2px;margin-left:40px">
                    <tr >
                <td  >
                    <table >
                        <tr>
                            <td  style="background-color: #F0FAF7; padding:10px">
                                <asp:Image ID="Image1" height="140px" width="140px" runat="server" ImageUrl='<%# Eval("image") %>' />
                            </td>
                            <td  style="background-color: #F0FAF7; padding:10px;width:305.6px">
                                <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                                <asp:Label ID="lblDBname" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br/>
                                <br/>
                                <asp:Label ID="lblPrice" runat="server" Text="Price: "></asp:Label>
                                <asp:Label ID="lblDBPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br/><br/>
                                <asp:Label ID="lblDesciption" runat="server" Text="Description: "></asp:Label>
                                <asp:Label ID="lblDBDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
                                
                                    
                            </td>
                        </tr>
                    </table>
                </td>
                </tr>
                </table>

                </ItemTemplate>
                </asp:Repeater>
                               <tr>
        <td>
            <br/>
             <tr  >
                    <td align="center" style="padding:10px;">
                        <asp:Button ID="Button7" runat="server" Text="New Combo" BackColor="#FFCC00" Style="border: solid 1px #ddd;margin-left:40px;margin-top:10px"
                                    Height="30px" Width="466.6px" /><br />
                     
                        <asp:Button ID="Button8" runat="server" Text="Save" 
                            BackColor="#00CC79" Style="border: solid 1px #ddd;margin-left:40px;margin-top:10px;margin-bottom:10px"
                                    Height="30px" Width="466.6px" />

                    </td>
                </tr>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TBayEatConnection %>" SelectCommand="SELECT * FROM [Packages]"></asp:SqlDataSource>
      </table>
  



 </div>
            </div>
        </div>
        
                     
                
    
  




    
         
</asp:Content>
