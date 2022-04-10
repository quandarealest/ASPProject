<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TBayEat_GroupProject.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet"/>
    <link href="../Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="../Style/login.css" rel="stylesheet" type="text/css" />
    <link href="../Style/signup.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="col-md-12 loginPageWrapper">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CreateUserButtonStyle-CssClass="btn btn-primary submitBtn" OnCreatedUser="CreateUserWizard1_CreatedUser" OnContinueButtonClick="CreateUserWizard1_ContinueButtonClick">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table class="signUpWrapper">
                        <tr>
                            <td align="center"><h1 class="title">Sign Up</h1></td>
                        </tr>
                        <tr>
                            <td align="center"><p class="subTitle">Sign up and hop on to the food journey!</p></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:TextBox placeholder="Username" CssClass="form-control" ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center"  colspan="2">
                                <asp:TextBox placeholder="Password" CssClass="form-control" ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center"  colspan="2">
                                <asp:TextBox placeholder="Confirm your password" CssClass="form-control" ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center"  colspan="2">
                                <asp:TextBox placeholder="Email" CssClass="form-control" ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center"  colspan="2">
                                <asp:TextBox placeholder="Phone Number" CssClass="form-control" ID="Phone" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PhoneRequired" runat="server" ControlToValidate="Phone" ErrorMessage="Phone number is required." ToolTip="Phone number is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <asp:CheckBox CssClass="checkbox" runat="server" ID="isOwner" Text="Owner"/>
                                <asp:CheckBox CssClass="checkbox" runat="server" ID="isCustomer" Text="Customer"/>
                            </td>
                        </tr>
                        <tr>
                            <td align="center"  colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" >
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
    </div>
</asp:Content>
