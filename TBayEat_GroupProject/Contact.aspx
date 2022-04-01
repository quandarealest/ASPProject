<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/FrontEnd.Master" CodeBehind="Contact.aspx.cs" Inherits="TBayEat_GroupProject.Contact" %>
   
    <asp:Content ID="contact" ContentPlaceHolderID="head" runat="server">
        <link href="Content/bootstrap.css" rel="stylesheet"/>
    <link href="./Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="./Style/homepage.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            .auto-style1 {
                width: 840px;
                height: 293px;
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
                
            
       
      
    <div class="row contactRow">
                   
                <div class="card col-lg-6 col-sm-12 col-md-6">    
            <div class="row">    
                <div class="col-sm-12 col-md-6 col-lg-6">    
                    <asp:Label ID="Label1" runat="server" Text="Email" ForeColor="Green"></asp:Label>    
                    <br />
                </div>    
                <div class="col-sm-12 col-md-6 col-lg-6">    
                    <asp:TextBox ID="txtto" CssClass="auto-style2" runat="server" Width="839px" Height="44px"></asp:TextBox>    
                    <br />
                </div>    
            </div>    
                    <br />
    
            <div class="row">    
                <div class="col-sm-12 col-md-6 col-lg-6">    
                    <asp:Label ID="Label2" runat="server" Text="Subject" ForeColor="Green"></asp:Label>    
                    <br />
                </div>    
                <div class="col-sm-12 col-md-6 col-lg-6">    
                    <asp:TextBox ID="txtsub" CssClass="auto-style2" runat="server" Width="842px" Height="40px"></asp:TextBox>    
                    <br />
                </div>    
            </div>    
    <br />
            <div class="row">    
                <div class="col-sm-12 col-md-6 col-lg-6">    
                    <asp:Label ID="Label3" runat="server" Text="Message" ForeColor="Green"></asp:Label>    
                    <br />
                </div>    
                <div class="col-sm-12 col-md-6 col-lg-6">    
                    <textarea id="txtmsg" class="auto-style1" name="txtmsg"></textarea>    
                </div>    
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Send Mail" OnClick="Button1_Click" Height="67px" Width="157px" />
                <br />
                <br />
                <br />
            </div>
        </div> 
        
                        </div>
    
    <asp:Label ID="lblmsg" runat="server" ForeColor="Green"></asp:Label>
        
  
   <div>
     
        
  
                                  <img src="./images/contactus.png" style="clip: rect(auto, auto, auto, 20px)" /></div>

    
</asp:Content>


