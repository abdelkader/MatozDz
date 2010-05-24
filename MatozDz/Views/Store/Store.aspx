<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MatozDz.Models.Store>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Store
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Store</h2>

    <table>
        <tr>
            <th></th>
           
            <th>
                name
            </th>
            <th>
                address
            </th>
            <th>
                phone
            </th>
            <th>
                url
            </th>
            <th>
                email
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

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

