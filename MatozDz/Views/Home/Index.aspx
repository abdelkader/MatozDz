<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
 
    <div id="subheader">
		<% using (Html.BeginForm("wilaya", "store", FormMethod.Post, new { id = "searchform" })) %>
		<% { %>

            Wilaya : <%= Html.TextBox("id","", new { @class = "box" }) %>
            <button class="btn" title="Submit Search">Chercher...</button>
        <% } %>

        </div>
        <div id="content">
            
<div class="contentbox">
    <h3>Magasins</h3>
    <p><%= Html.ActionLink("Ajouter...","Ajout","Store") %></p>

</div>

<div class="contentbox">
    <h3>Derniers magasins ajoutés :</h3>
      <%= Html.Action("GetLastAddedStores")%>
  
</div>

<div class="contentbox">
    <h3>A propos de...</h3>
    <p>This website has been redesigned using Visual Studio 2008 and C# where needed.  I even added some jQuery this time around.</p>
    <p>A blog will be added shortly, along with a few MVC projects I want to build.</p> 
    
</div>
</asp:Content>
