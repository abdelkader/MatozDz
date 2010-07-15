<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="registerTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Register
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContent" runat="server">
 <style type="text/css">
        .green
        {
            color: Green;
        }
        .red
        {
            color: Red;
        }
 </style>
    
<script type="text/javascript">

    $(document).ready(function() {
    
        $("#btnCheck").click(function() {
            var name = $("#username").val(); //Value entered in the text box
            var status = $("#divStatus"); //DIV object to display the status message
            
            status.html("Checking....") //While our Thread works, we will show some message to indicate the progress

            //jQuery AJAX Post request
            $.post('<%= Url.Action("CheckName", "Account") %>', { username: name },
            function(data) {
                if (data == "true") {
                    status.html(name + " est disponible !").attr('class', 'green');
                } else {
                    status.html(name + " n'est pas disponible !").attr('class', 'red');
                }
            });
        });
    });
</script>

</asp:Content>




<asp:Content ID="registerContent" ContentPlaceHolderID="MainContent" runat="server">
    <p class="spacer">
        Utiliser le formulaire pour créer un nouveau compte
   
        La longueur du mot de passe doit dépasser <%=Html.Encode(ViewData["PasswordLength"])%> caractères.
    </p>
    <%= Html.ValidationSummary("La création du compte a échoué, veuillez corriger les informations et essayer de nouveau.") %>

    <% using (Html.BeginForm()) { %>
        <div>
            <fieldset>
                <legend>Information sur le compte</legend>
                <p>
                    <label for="username">Identifiant:</label>
                    <%= Html.TextBox("username") %>
                    <%= Html.ValidationMessage("username") %>
                    <input  type="button" id="btnCheck" value="Vérifier !" />
                    <div id="divStatus"></div>
                </p>
                <p>
                    <label for="email">Courriel:</label>
                    <%= Html.TextBox("email") %>
                    <%= Html.ValidationMessage("email") %>
                </p>
                <p>
                    <label for="password">Mot de passe:</label>
                    <%= Html.Password("password") %>
                    <%= Html.ValidationMessage("password") %>
                </p>
                <p>
                    <label for="confirmPassword">Confirmer le mot de passe:</label>
                    <%= Html.Password("confirmPassword") %>
                    <%= Html.ValidationMessage("confirmPassword") %>
                </p>
                <p>
                    
                    <input type="submit" value="S'enregistrer" />
                </p>
            </fieldset>
        </div>
    <% } %>
</asp:Content>
