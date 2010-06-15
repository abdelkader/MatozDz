<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Erreur
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContent" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Une erreur est survenue durant le traitement de votre requête.</h2>
    <% if (TempData.ContainsKey("error")) { %>
    
    <div> <%= TempData["error"]%> </div>
<% } %>

</asp:Content>