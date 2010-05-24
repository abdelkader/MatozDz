using System;
using System.Linq;
using System.Web.Mvc;
using MatozDz.Models;

namespace MatozDz.Controllers
{
    public class StoreController : Controller
    {
        

        private readonly IStoresRepository _repository;

        public StoreController() : this(new StoresRepository()){ }

        public StoreController(IStoresRepository repository)
        {
            _repository = repository;
        }
        
        //
        // Default home page.
        public ActionResult Index()
        {
            var stores = _repository.GetStores();
            return View(stores);
        }

        public ActionResult Wilaya(string id)
        {
            
            int wilayaId;
            IQueryable<Store> stores;
            
            // Is URL containing Wilaya by Id or String ?
            if (int.TryParse(id, out wilayaId))
                stores = _repository.GetStoresByWilayaId(wilayaId);
            else
                stores = _repository.GetStoresByWilaya(id);
            
            
            return View(stores);
            
        }

        //
        // GET: /Store/Ajout

        public ActionResult Ajout()
        {
            var wilaya = _repository.GetAllWilayas();
           
            ViewData["Wilayas"] = new SelectList(wilaya, "WilayaId", "name");
            return View();
        }

        [HttpPost]
        public ActionResult Ajout([Bind(Exclude = "StoreId")]Store store)
        {
            if (ModelState.IsValid)
            {

                try
                {
                    var wilayaId = Request.Form["WilayaId"];

                    //store.AddedBy = "SomeUser";
                    
                    _repository.Add(store, wilayaId);
                    _repository.Save();

                    return RedirectToAction("Wilaya", new { id = wilayaId });
                }
                catch (Exception e) 
                {
                    ;
                    // Todo Add exception handling.
                   // ModelState.AddRuleViolations(dinner.GetRuleViolations());
                }
            }

            return RedirectToAction("Ajout");
        }

    }
}
