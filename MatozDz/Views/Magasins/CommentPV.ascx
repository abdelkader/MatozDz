<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MatozDz.Models.Comment>" %>
<li class="CommentItem">
    <%--TODO: move this to model, or controller--%>
    <% if ( Context.User.Identity.IsAuthenticated &&
                        (Context.User.IsInRole("Admin") || Context.User.IsInRole("Modo") || 
                        Model.UserPosted == Context.User.Identity.Name)
                       )
                   { %>
                   
    <span class="icons">
        <a href="<%=Url.Action("EditerCommentaire", new { commentId = Model.Id })%>" class="EditerCommentaire">
                 <img src="<%= Url.Content("~/Content/img/edit.png")%>" alt="Editer Commentaire" />
        </a>
        
        <%= Ajax.ActionLink("[imglnk]", "SupprimerCommentaire",
                               new { commentId = Model.Id }, 
                               new AjaxOptions {}, 
                               new { @class = "supprimerCommentaire" }).ToString().
                                   Replace("[imglnk]", "<img src=\"/Content/img/supprimer.png\">")%>
    </span>
   <% } %>
    <h3> 
        <%= Html.Encode(Model.UserPosted) %></h3>
    <span class="time">
        <%= Html.Encode(String.Format("{0:dd/MM/yyyy}", Model.DatePosted))%></span>
    <div class="CommentText">
        <%= Html.Encode(Model.Text) %></div>
</li>
