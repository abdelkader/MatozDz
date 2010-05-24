<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MatozDz.Models.Store>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Detail
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Detail</h2>

    <fieldset>
        <legend>Fields</legend>
        
        
        <div class="display-label">name</div>
        <div class="display-field"><%= Html.Encode(Model.name) %></div>
        
        <div class="display-label">address</div>
        <div class="display-field"><%= Html.Encode(Model.address) %></div>
        
        <div class="display-label">phone</div>
        <div class="display-field"><%= Html.Encode(Model.phone) %></div>
        
        <div class="display-label">url</div>
        <div class="display-field"><%= Html.Encode(Model.url) %></div>
        
        <div class="display-label">email</div>
        <div class="display-field"><%= Html.Encode(Model.email) %></div>
        
        <div class="display-label">Wilaya</div>
        <div class="display-field"><%= Html.Encode(Model.Wilaya.name) %></div>
        
        <div class="display-label">DateAdded</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:g}", Model.DateAdded)) %></div>
        
        <div class="display-label">LastDateUpdated</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:g}", Model.LastDateUpdated)) %></div>
        
        <div class="display-label">UserId</div>
        <div class="display-field"><%= Html.Encode(Model.UserId) %></div>
        
    </fieldset>
    <p>

        <%= Html.ActionLink("Edit", "Edit", new { id=Model.StoreId }) %> |
        <%= Html.ActionLink("Supprimer", "Supprimer", new { id = Model.StoreId })%> |
        <%= Html.ActionLink("Back to List", "Wilaya") %>
    </p>

</asp:Content>

