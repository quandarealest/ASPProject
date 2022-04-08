<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TBayEat_GroupProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet"/>
    <link href="../Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="../Style/login.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="col-md-12 loginPageWrapper">
        <asp:Login ID="loginForm" runat="server" CssClass="loginForm" OnAuthenticate="LoginAuthentication" OnLoggedIn="loginForm_LoggedIn">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2"><h1 class="title">Sign In</h1></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2"><p class="subTitle">Sign in and start your food adventure</p></td>
                                </tr>
                                <form>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:TextBox CssClass="form-control" placeholder="Username" ID="UserName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="usernameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="username is required." ToolTip="username is required." ValidationGroup="loginForm">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:TextBox CssClass="form-control" placeholder="Password" ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="passwordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="loginForm">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:CheckBox CssClass="checkbox" ID="RememberMe" runat="server" Text="Remember me" />
                                        </td>
                                        <td align="right">
                                            <a class="forgetPassword" href="HomePage.aspx">
                                                Forget password?
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:Button type="submit" CssClass="btn btn-primary submitBtn" ID="LoginButton" runat="server" BorderColor="#009933" CommandName="Login" Text="Log In" ValidationGroup="loginForm" />
                                        </td>
                                    </tr>
                                </form>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <LoginButtonStyle BorderColor="#009933" />
        </asp:Login>
    </div>
</asp:Content>
