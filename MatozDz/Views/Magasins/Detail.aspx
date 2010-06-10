<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MatozDz.ViewModel.StoreDetail>" %>
<%@ Import Namespace="MatozDz.Helpers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Detail du magasin :  <%= Html.Encode(Model.Store.name) %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContent" runat="server">

<script language="javascript" type="text/javascript" src="<%=Url.Content("~/Scripts/wmd/wmd.js") %>"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <fieldset>
        <legend>Detail du magasin :  <%= Html.Encode(Model.Store.name) %></legend>
        <div class="display-label">name</div>
        <div class="display-field"><%= Html.Encode(Model.Store.name)%></div>
        
        <div class="display-label">adresse</div>
        <div class="display-field"><%= Html.Encode(Model.Store.address)%></div>
        
        <div class="display-label">Téléphone</div>
        <div class="display-field"><%= Html.Encode(Model.Store.phone)%></div>
        
        <div class="display-label">Site Web</div>
        <div class="display-field"><%= Html.Encode(Model.Store.url)%></div>
        
        <div class="display-label">Email</div>
        <div class="display-field"><%= Html.Encode(Model.Store.email)%></div>
        
        <div class="display-label">Wilaya</div>
        <div class="display-field"><%= Html.Encode(Model.Store.name)%></div>
        
        <div class="display-label">Date Ajouté</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:dd/MM/yyyy}", Model.Store.DateAdded))%></div>
        
        <div class="display-label">Mis à jour le:</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:dd/MM/yyyy}", Model.Store.LastDateUpdated))%></div>
        
        <div class="display-label">Ajouté par :</div>
        <div class="display-field"><%= Html.Encode(Model.Store.UpdatedByUser) %></div>
      
       <br/><br/>
        <h2>Liste des Commentaires </h2>
        <ol id="step">
           <% foreach (var item in Model.Store.Comment) { %>
              <li class="item1">
                <% if ( User.Identity.IsAuthenticated &&
                        (User.IsInRole("Admin") || User.IsInRole("Modo") || item.UserPosted == User.Identity.Name)
                       )
                   { %>
                   <span class="icons">
                    <%= Html.ActionLinkWithImage(Url.Content("~/Content/img/edit.png"), "EditCommentaire", new { commentId = item.Id, storeId = Model.Store.StoreId })%>
                    <%= Html.ActionLinkWithImage(Url.Content("~/Content/img/supprimer.png"), "SupprimerCommentaire", new { commentId = item.Id, storeId = Model.Store.StoreId })%>
                   </span>
                <% } %>
       
                    <h3 ><%= Html.Encode(item.UserPosted) %></h3>
                    <p class="time"><%= Html.Encode(String.Format("{0:dd/MM/yyyy}", item.DatePosted))%></p>
                    <p><%= Html.Encode(item.Text) %></p>
          <% } %>
          </li>
       </ol>
       
       
       <br/><br/>
        <%--Ajout de commentaire--%>
        <% if (   User.Identity.IsAuthenticated && 
                  ( User.IsInRole("Admin") || User.IsInRole("Modo") || Model.Comment.UserPosted == User.Identity.Name ) 
              )
         { %>

                <% using (Html.BeginForm("AjoutCommentaire", "Magasins")) {%>
                
                <div class="editor-label">
                    <%= Html.LabelFor(model => model.Comment.Text) %>
                </div>
                <div class="editor-field">
                    <%= Html.Hidden("storeId", Model.Store.StoreId)%>
                    <%= Html.ValidationMessageFor(model => model.Comment.Text)%>
                    <%= Html.TextAreaFor(model => model.Comment.Text, new { rows = 5, cols = 70 })%>
                    <div class="wmd-preview"></div>
                    
                </div>
                
                <p>
                    <input type="submit" value="Ajouter" />
                </p>
                <% } %>
        <% } %>     
       
        <%--Ajout de commentaire--%>
        <br/>
  
    </fieldset>
    <p>
        
        <%= Html.ActionLink("Edit", "Edit", new { id=Model.Store.StoreId }) %> |
        <%= Html.ActionLink("Supprimer", "Supprimer", new { id = Model.Store.StoreId })%> |
        <%= Html.ActionLink("Back to List", "Wilaya") %>
    </p>
        

</asp:Content>
