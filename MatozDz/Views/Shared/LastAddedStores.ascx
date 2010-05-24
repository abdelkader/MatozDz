<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<MatozDz.Models.Store>>" %>
<%@ Import Namespace="MatozDz.Helpers" %> 
    <% foreach (var item in Model) { %>
       
        <%= Html.ActionLink(Html.Truncate(item.name,7), "Detail", "Store", new { id = item.StoreId }, null)%>
       <br/>
    <% } %>



   

