using System.Web.Mvc;



namespace MatozDz.Helpers
{
    public static class HtmlHelpers
    {
        public static string Truncate(this HtmlHelper helper, string input, int length)
        {
            if (input.Length <= length)
            {
                return input;
            }
            
            return input.Substring(0, length) + "...";

        }

        public static string ActionLinkWithImage(this  HtmlHelper html, string imgSrc, string actionName, object routeValues)
        {
            
            UrlHelper urlHelper = new UrlHelper(html.ViewContext.RequestContext);
            string imgUrl = urlHelper.Content(imgSrc);
            TagBuilder imgTagBuilder = new TagBuilder("img");
            imgTagBuilder.MergeAttribute("src", imgUrl);
            string img = imgTagBuilder.ToString(TagRenderMode.Normal);
            string url = urlHelper.Action(actionName, routeValues);
            
            TagBuilder tagBuilder = new TagBuilder("a")
                                        {
                                            InnerHtml = img
                                        };

            tagBuilder.MergeAttribute("href", url);
            return tagBuilder.ToString(TagRenderMode.Normal);
        }


        

     

    }
}