<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<MatozDz.Models.Store>>" %>

    <% foreach (var item in Model) { %>
       <%= Html.Encode(item.name) %>
       <br/>
    <% } %>



   

