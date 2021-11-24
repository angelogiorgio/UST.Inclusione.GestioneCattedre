<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Login_Page.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Login_Page" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="jumbotron">
        <h1>Login</h1>
    </div>

    <div class="row">
            <asp:Login id="Login1" runat="server" OnLoggingIn="Login1_LoggingIn" >
                <LayoutTemplate>
                    <table style="width:100%">
                        <tr>
                            <td  style="align-content:center">
                               Inserisci lo username e la password di Gestione Cattedre.
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            User name:
                                        </td>
                                        <td>
                                            <asp:TextBox id="UserName" runat="server"></asp:TextBox>
                                            <asp:requiredfieldvalidator id="UserNameRequired" runat="server" ControlToValidate="UserName" Text="*"></asp:requiredfieldvalidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Password:</td>
                                        <td>
                                            <asp:TextBox id="Password" runat="server" textMode="Password"></asp:TextBox>
                                            <asp:requiredfieldvalidator id="PasswordRequired" runat="server" ControlToValidate="Password" Text="*"></asp:requiredfieldvalidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Checkbox id="RememberMe" runat="server" Text="Remember my login"></asp:Checkbox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                          
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:button id="Login" CommandName="Login" runat="server" Text="Login"></asp:button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Literal id="FailureText" runat="server" Visible="true"></asp:Literal></td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
    </div>
 
</asp:Content>
