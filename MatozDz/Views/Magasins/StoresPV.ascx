<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<PagedList<MatozDz.Models.Store>>" %>
<%@ Import Namespace="Webdiyer.WebControls.Mvc"%>

<div id="dvStores">
    <h2>Liste des Magasins </h2>
    <table>
        <tr>
            <th></th>
            <th>name</th>
            <th>address</th>
            <th>phone</th>
            <th>url</th>
            <th>email</th>
        </tr>

    <% foreach (var item in Model) { %>
       <tr>
            <td>
                <%= Html.ActionLink("Edit", "Edit", new { id=item.StoreId }) %> |
                <%= Html.ActionLink("Detail", "Detail", new { id=item.StoreId })%> |
                <%= Html.ActionLink("Supprimer", "Supprimer", new { id=item.StoreId })%>
            </td>
           
            <td>
                <%= Html.Encode(item.name) %>
            </td>
            <td>
                <%= Html.Encode(item.address) %>
            </td>
            <td>
                <%= Html.Encode(item.phone) %>
            </td>
            <td>
                <%= Html.Encode(item.url) %>
            </td>
            <td>
                <%= Html.Encode(item.email) %>
            </td>
        </tr>
    
    <% } %>

    </table>
<br />
    <p><%= Html.ActionLink("Ajouter Nouveau Magasin...", "Ajout") %></p>
 <br /><br />  
<%=Html.AjaxPager(Model, new PagerOptions() { PageIndexParameterName = "id", 
    ShowDisabledPagerItems = false, AlwaysShowFirstLastPageNumber = true,
    CurrentPagerItemWrapperFormatString = "<span class=\"cpb\">{0}</span>",
    NumericPagerItemWrapperFormatString = "<span class=\"item\">{0}</span>",
    CssClass = "pages", SeparatorHtml = "" }, new AjaxOptions() { UpdateTargetId = "dvStores" })%>

</div>

