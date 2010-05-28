<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MatozDz.Models.Store>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Supprimer
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Supprimer</h2>

    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend>Fields</legend>
     
        <div class="display-label">name</div>
        <div class="display-field"><%= Html.Encode(Model.name) %></div>
        
        <div class="display-label">adresse</div>
        <div class="display-field"><%= Html.Encode(Model.address) %></div>
        
        
        <div class="display-label">Date Ajoutée</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:g}", Model.DateAdded)) %></div>
        
        <div class="display-label">Dernière Modification</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:g}", Model.LastDateUpdated)) %></div>
        
        <div class="display-label">Ajouté par l'User</div>
        <div class="display-field"><%= Html.Encode(Model.AddedByUser) %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%= Html.ActionLink("Back to List", "Store") %>
        </p>
    <% } %>

</asp:Content>

