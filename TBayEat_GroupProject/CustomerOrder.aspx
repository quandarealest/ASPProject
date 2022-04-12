<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="CustomerOrder.aspx.cs" Inherits="TBayEat_GroupProject.CustomerOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet"/>
    <link href="./Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="./Style/homepage.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div align="center">
        <h3>
            <asp:Label ID="lblMsg" Font-Bold="true" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </h3>
    </div>
    <table id="tables" align="center" style="margin-left: 20%; margin-right: 20%; border: 1px solid #ddd">
        <tr>
            <td>
                <asp:Repeater ID="rptOrder" runat="server">
                    <ItemTemplate>
                        <table id="InLine" style="padding: 0; margin: 0; width: 300px; height: 300px">
                            <tr>
                                <th>
                                    <b>
                                        <%#Eval("OrderId") %>
                                    </b>
                                </th>
                            </tr>
                            <tr>
                                <td align="center">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Image") %>' Height="100px" Width="100px"
                                                    runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblName" runat="server" Text="CustomerOrderId"></asp:Label>&nbsp;
                                                <asp:Label ID="lblDBName" runat="server" Text='<%# Eval("CustomerOrderId") %>'></asp:Label>
                                                <br />
                                                <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>&nbsp;
                                                <asp:Label ID="lblDBDescription" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr style="border: 1px solid #ddd">
            <td align="center">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/HomePage.aspx" runat="server">
                    <asp:Label ID="lblOrderMoreFood" runat="server"></asp:Label>
                </asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>













