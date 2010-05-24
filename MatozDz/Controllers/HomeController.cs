using System.Web.Mvc;
using System.Web.Routing;
using MatozDz.Models;

namespace MatozDz.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        private readonly IStoresRepository _repository;

        public HomeController() : this(new StoresRepository()){ }

        public HomeController(IStoresRepository repository)
        {
            _repository = repository;
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        [ChildActionOnly]
        public ActionResult GetLastAddedStores()
        {
            var stores = _repository.GetLastAddedStores(5);
            return PartialView("LastAddedStores", stores);
        }
        
    }
}
