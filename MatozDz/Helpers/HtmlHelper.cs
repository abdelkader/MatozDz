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
    }
}