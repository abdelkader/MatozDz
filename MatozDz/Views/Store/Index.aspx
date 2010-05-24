<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MatozDz.Models.Store>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            
            <th>
                name
            </th>
            <th>
                address
            </th>
           
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Html.ActionLink("Edit", "Edit", new { id=item.StoreId }) %> |
                <%= Html.ActionLink("Details", "Details", new { id=item.StoreId })%> |
                <%= Html.ActionLink("Delete", "Delete", new { id=item.StoreId })%>
            </td>
           
            <td>
                <%= Html.Encode(item.name) %>
            </td>
            <td>
                <%= Html.Encode(item.address) %>
            </td>
            
        </tr>
    
    <% } %>

    </table>

    <p>
        <%= Html.ActionLink("Ajouter un nouveau magasin", "Create") %>
    </p>

</asp:Content>

