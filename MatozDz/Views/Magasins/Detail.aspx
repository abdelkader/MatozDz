﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MatozDz.ViewModel.StoreDetail>" %>
<%@ Import Namespace="MatozDz.Helpers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Detail du magasin :  <%= Html.Encode(Model.Store.name) %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContent" runat="server">

    
<script language="javascript" type="text/javascript" src="<%=Url.Content("~/Scripts/MicrosoftAjax.js") %>"></script>
<script language="javascript" type="text/javascript" src="<%=Url.Content("~/Scripts/MicrosoftMvcAjax.js") %>"></script>    
<script language="javascript" type="text/javascript" src="<%=Url.Content("~/Scripts/jquery.jeditable.js") %>"></script>

<script language="javascript" type="text/javascript">

    $(function() {
    
//     $(".CommentText").editable("projects/jeditable/php/save.php", { 
//    indicator : '<img src="img/indicator.gif">',
//    data   : "{'Lorem ipsum':'Lorem ipsum','Ipsum dolor':'Ipsum dolor','Dolor sit':'Dolor sit'}",
//    type   : "textarea",
//    submit : "Enregistrer",
//    style  : "inherit",
//    submitdata : function() {
//      return {id : 2};
//    }
//  });


    
     $('.CommentText').editable("projects/jeditable/php/save.php", { 
            type: "textarea",
            cancel: 'Cancel',
            submit: 'Update Gallery Description',
            indicator: '<img src="/images/ajax-loader.gif">',
            tooltip: 'Click to edit...',
            onblur    : "ignore",
           
        }).focus( function(){
            $('textarea').bind('keypress',function(){validate($('textarea'))} ) 
        });
        
        function validate(e){
        var limit=10; 
        var limit2=9; 
            if(e.val().length < (limit))
            {
            }
            else
            {   
                $(e).removeClass().addClass("sidenavOver"); 
                $(e).val($(e).val().substr(0, limit2));
                alert("Max character count exceeded.");
            }
        } 
     
     
         
      
      $(".supprimerCommentaire").click(function() {
        $(this).parents(".CommentItem").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow");
        });

    
        $("img.rating").mouseover(function() {
            giveRating($(this), "FilledStar.png");
            $(this).css("cursor", "pointer");
        });

        $("img.rating").mouseout(function() {
            giveRating($(this), "EmptyStar.png");
        });

        $("img.rating").click(function() {
            $("img").unbind("mouseout mouseover click");

            // call ajax methods to update database
            var url = "/Rating/PostRating?rating=" + parseInt($(this).attr("id"));
            $.post(url, null, function(data) {
                $("#result").text(data);
            });
        });
    });

    function giveRating(img, image) {
        img.attr("src", "<%= Url.Content("~/Content/img/") %>" + image)
               .prevAll("img").attr("src", "<%= Url.Content("~/Content/img/") %>" + image);
    }    
</script>


           
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <fieldset>
        <legend>Detail du magasin :  <%= Html.Encode(Model.Store.name) %></legend>
        <% if (   User.Identity.IsAuthenticated && 
                  ( User.IsInRole("Admin") || User.IsInRole("Modo") || Model.Comment.UserPosted == User.Identity.Name ) 
              )
         { %>
        <p>
            <img src="<%= Url.Content("~/Content/img/EmptyStar.png") %>"  class="rating" alt="Star Rating" align="middle" id="1" />
            <img src="<%= Url.Content("~/Content/img/EmptyStar.png") %>"  class="rating" alt="Star Rating" align="middle" id="2" />
            <img src="<%= Url.Content("~/Content/img/EmptyStar.png") %>"  class="rating" alt="Star Rating" align="middle" id="3" />
            <img src="<%= Url.Content("~/Content/img/EmptyStar.png") %>"  class="rating" alt="Star Rating" align="middle" id="4" />
            <img src="<%= Url.Content("~/Content/img/EmptyStar.png") %>"  class="rating" alt="Star Rating" align="middle" id="5" />
        </p>
        <div id="result"></div>
         <% } %> 
         
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
        <div class="display-field"><%= Html.Encode(Model.Store.Wilaya.name)%></div>
        
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
              <li class="CommentItem">
                <% if ( User.Identity.IsAuthenticated &&
                        (User.IsInRole("Admin") || User.IsInRole("Modo") || item.UserPosted == User.Identity.Name)
                       )
                   { %>
                   <span class="icons">

            <a href="<%=Url.Action("EditerCommentaire", new { commentId = item.Id })%>"  class="EditerCommentaire">
            <img src="<%= Url.Content("~/Content/img/edit.png")%>" alt="Editer Commentaire" /></a>
            
            <%= Ajax.ActionLink("[imglnk]", "SupprimerCommentaire",
                               new { commentId = item.Id }, new AjaxOptions { }, new { @class = "supprimerCommentaire" }
                                               ).ToString().Replace("[imglnk]", "<img src=\"/Content/img/supprimer.png\">")%> 
 
               </span>
                <% } %>
       
                    <h3 ><%= Html.Encode(item.UserPosted) %></h3>
                    <span class="time"><%= Html.Encode(String.Format("{0:dd/MM/yyyy}", item.DatePosted))%></span>
                    <div class="CommentText"><%= item.Text %></div>
               </li>
          <% } %>
          
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
                    <%= Html.TextAreaFor(model => model.Comment.Text, new { rows = 5, cols = 59 })%>
                    <div class="wmd-preview"></div>
                    
                </div>
                
                <p>
                    <input type="submit" value="Ajouter" />
                </p>
                <% } %>
        <% } %>     
       
        <%--Ajout de commentaire--%>
        <br/>
        
        <% if (   User.Identity.IsAuthenticated && 
                  ( User.IsInRole("Admin") || User.IsInRole("Modo") || Model.Comment.UserPosted == User.Identity.Name ) 
              )
         { %>
            <p>
                
                <%= Html.ActionLink("Editer", "Edit", new { id=Model.Store.StoreId }) %> |
                <%= Html.ActionLink("Supprimer", "Supprimer", new { id = Model.Store.StoreId })%> |
                <%= Html.ActionLink("Liste principale", "Wilaya") %>
            </p>
         <% } %>
    </fieldset>
    
        

</asp:Content>
