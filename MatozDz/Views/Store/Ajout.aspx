<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MatozDz.Models.Store>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Ajout de magasin...
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Ajout de magasin...</h2>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
           
            <div class="editor-label">
                <%= Html.LabelFor(model => model.name) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.name) %>
                <%= Html.ValidationMessageFor(model => model.name) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.address) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.address) %>
                <%= Html.ValidationMessageFor(model => model.address) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.phone) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.phone) %>
                <%= Html.ValidationMessageFor(model => model.phone) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.url) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.url) %>
                <%= Html.ValidationMessageFor(model => model.url) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.email) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.email) %>
                <%= Html.ValidationMessageFor(model => model.email) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Wilaya) %>
            </div>
            <div class="editor-field">
              <%= Html.DropDownList("WilayaId", (IEnumerable<SelectListItem>)ViewData["Wilayas"])%>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

