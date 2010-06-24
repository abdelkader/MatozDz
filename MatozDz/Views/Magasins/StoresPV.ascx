<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<PagedList<MatozDz.Models.Store>>" %>
<%@ Import Namespace="Webdiyer.WebControls.Mvc"%>
<%@ Import Namespace="MatozDz.Helpers" %>

<div id="dvStores">
    <h2>Liste des Magasins </h2>
    <table>
        <tr>
            <th></th>
            <th>Nom</th>
            <th>adresse</th>
            <th>Téléphone</th>
            <th>Site Web</th>
            <th>Email</th>
        </tr>

    <% foreach (var item in Model) { %>
       <tr>
            <td>
                <%= Html.ActionLinkWithImage(Url.Content("~/Content/img/edit.png"), "Edit", new { id = item.StoreId })%>|
                <%= Html.ActionLinkWithImage(Url.Content("~/Content/img/Detail.png"), "Detail", new { id = item.StoreId })%>|
                <%= Html.ActionLinkWithImage(Url.Content("~/Content/img/supprimer.png"), "Supprimer", new { id = item.StoreId })%>
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

