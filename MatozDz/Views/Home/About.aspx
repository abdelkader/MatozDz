<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    About Us
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>À Propos</h2>
    
    <fieldset>
     <legend>Pourquoi ce site...?</legend>
     <p>
        Ce site a été conçu avec Visual Studio 2008 (Prochainement porté vers visual studio 2010), et C# en utilisant le framework ASP.net MVC. 
        Quelques librairies, ainsi que des composantes  ont été ajoutés, tels que JQuey, MVCPager...

     </p> 
    </fieldset>
    
    
</asp:Content>
