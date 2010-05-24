<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    About Us
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>About</h2>
    <p>
       This website has been redesigned using Visual Studio 2008 and C# where needed. I even added some jQuery this time around.
       A blog will be added shortly, along with a few MVC projects I want to build.
    </p>
</asp:Content>
