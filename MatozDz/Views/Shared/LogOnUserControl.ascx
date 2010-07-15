<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="MatozDz.Helpers" %>
<%
    if (Request.IsAuthenticated) {
%>
        <img src="<%= Url.Content("~/Content/img/User.png")%>" alt="Icone de l'utilisateur" /> 
        Welcome <b><%= Html.Encode(Page.User.Identity.Name) %></b>!
        [ <%= Html.ActionLink("Se Déconnecter...", "LogOff", "Account") %> ]
<%
    }
    else {
%> 
        [ <%= Html.ActionLink("Se Connecter...", "LogOn", "Account") %> ]
<%
    }
%>
