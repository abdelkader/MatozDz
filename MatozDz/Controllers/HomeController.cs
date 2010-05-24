using System.Web.Mvc;
using System.Web.Routing;
using MatozDz.Models;

namespace MatozDz.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            return View();
        }

       
        
    }
}
