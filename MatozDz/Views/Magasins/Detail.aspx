<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MatozDz.ViewModel.StoreDetail>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Detail du magasin :  <%= Html.Encode(Model.Store.name) %>
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
        <table>
            <tr>
                <th></th>
                <th>Date</th>
                <th>User </th>
                <th>Comment </th>
            </tr>

           <% foreach (var item in Model.Store.Comment) { %>
           <tr>
                <td>
                    <%= Html.ActionLink("Edit", "Edit", new { id=item.Id  }) %> |
                    <%= Html.ActionLink("Supprimer", "Supprimer", new { id=item.Id })%>
                </td>
               
                <td>
                    <%= Html.Encode(String.Format("{0:dd/MM/yyyy}", item.DatePosted))%>
                </td>
                <td>
                    <%= Html.Encode(item.UserPosted) %>
                </td>
                <td>
                    <%= Html.Encode(item.Text) %>
                </td>
            </tr>
        
        <% } %>
  </table>
       
       
       <br/><br/>
        <%--Ajout de commentaire--%>
        <% using (Html.BeginForm("AjoutCommentaire", "Magasins")) {%>
        
        <div class="editor-label">
            <%= Html.LabelFor(model => model.Comment.Text) %>
        </div>
        <div class="editor-field">
            <%= Html.TextBoxFor(model => model.Comment.Text) %>
            <%= Html.ValidationMessageFor(model => model.Comment.Text)%>
        </div>
        
        <p>
            <input type="submit" value="Ajouter" />
        </p>
        <% } %>
        <%--Ajout de commentaire--%>
        <br/>
  
    </fieldset>
    <p>
        <%= Html.ActionLink("Edit", "Edit", new { id=Model.Store.StoreId }) %> |
        <%= Html.ActionLink("Supprimer", "Supprimer", new { id = Model.Store.StoreId })%> |
        <%= Html.ActionLink("Back to List", "Wilaya") %>
    </p>
        </table>

</asp:Content>
