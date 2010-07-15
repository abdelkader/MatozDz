<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Log On
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    <p class="spacer"> 
        SVP, entrez vos informations <%= Html.ActionLink("S'enregistrer", "Register") %> Si vous avez pas de compte.
    </p>
    <%= Html.ValidationSummary("Login was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) { %>
        <div>
            <fieldset>
                <legend>Account Information</legend>
                <p>
                    <label for="username">Identifiant:</label>
                    <%= Html.TextBox("username") %>
                    <%= Html.ValidationMessage("username") %>
                </p>
                <p>
                    <label for="password">Mot de passe:</label>
                    <%= Html.Password("password") %>
                    <%= Html.ValidationMessage("password") %>
                </p>
                <p>
                    <%= Html.CheckBox("rememberMe") %> <label class="inline" for="rememberMe">Se rappeler de moi?</label>
                </p>
                <p>
                    <input type="submit" value="Se connecter" />
                </p>
            </fieldset>
        </div>
    <% } %>
</asp:Content>
