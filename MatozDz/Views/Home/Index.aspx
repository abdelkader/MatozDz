<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
 
    <div id="subheader">
		<% using (Html.BeginForm("wilaya", "Magasins", FormMethod.Post, new { id = "searchform" })) %>
		<% { %>

            Wilaya : <%= Html.TextBox("id", "", new { @class = "box", @autocomplete = "off" })%>
            <button class="btn" title="Submit Search">Chercher...</button>
        <% } %>
  
        </div>
        <div id="content">
            
<div class="contentbox">
    <h3>Magasins</h3>
    <p><%= Html.ActionLink("Ajouter...","Ajout","Magasins") %></p>

</div>

<div class="contentbox">
    <h3>Derniers magasins ajoutés :</h3>
      <%= Html.Action("GetLastAddedStores")%>
  
</div>

<div class="contentbox">
    <h3>A propos de...</h3>
    <p>
    Ce site a été conçu avec Visual Studio 2008, et C# en utilisant le framework ASP.net MVC. Quelques librairies, ainsi que des composantes 
    ont été ajoutés, tels que JQuey, MVCPager...
    <p>Un article devrait suivre pour expliquer l'architecture, ainsi que les détails de l'implémentation.</p> 
    
</div>
</asp:Content>
