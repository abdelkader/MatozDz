using System;
using System.Linq;
using System.Web.Mvc;
using MatozDz.Helpers;
using MatozDz.Models;
using Webdiyer.WebControls.Mvc;

namespace MatozDz.Controllers
{
    public class MagasinsController : Controller
    {
        private readonly IStoresRepository _repository;
        private readonly IDateTime _date;

        #region Constructor
        public MagasinsController() : this(new StoresRepository(), new CustomDateTime()){ }
        public MagasinsController(IStoresRepository repository, IDateTime customDate)
        {
            _repository = repository;
            _date = customDate;

        }
        #endregion Constructor
      
        public ActionResult Index(int? id)
        {
            PagedList<Store> stores = _repository.GetStores().OrderBy(p => p.StoreId).ToPagedList(id ?? 1, 20);

            if (Request.IsAjaxRequest())
                return PartialView("StoresPV", stores);

            
            return View(stores);
        }


        public ActionResult WilayaList()
        {
            var listWilaya = new string[48];

            var wilayas = _repository.GetAllWilayas().ToList();
            for (int i = 0; i < wilayas.Count(); i++)
            {
                listWilaya[i] = wilayas[i].name;
            }
            
            
            //return raw text, one result on each line
            return Content(string.Join("\n", listWilaya));
        }

        public ActionResult Wilaya(string id)
        {
            // URL: /Wilaya
            if (string.IsNullOrEmpty(id))
            {
                PagedList<Store> stores = _repository.GetStores().OrderBy(p=>p.StoreId).ToPagedList(1,20);
                if (Request.IsAjaxRequest())
                    return PartialView("StoresPV", stores);
                return View(stores);
            }
            
            // Is URL containing pagination number or wilaya String ?
            int wilayaId;
            bool Parsed = int.TryParse(id, out wilayaId);


            // URL : /Wilaya/2
            if (Parsed)
            {
                PagedList<Store> stores = _repository.GetStores().OrderBy(p => p.StoreId).ToPagedList(wilayaId, 20);
                if (Request.IsAjaxRequest())
                    return PartialView("StoresPV", stores);
                return View(stores);
              
            }

            // URL: /Wilaya/Adrar
            else
            {
                PagedList<Store> stores = _repository.GetStoresByWilaya(id).OrderBy(p => p.StoreId).ToPagedList(1, 20);
                if (Request.IsAjaxRequest())
                    return PartialView("StoresPV", stores);
                return View(stores);      
                
            }
            
            
        }

      

        //
        // GET: /Store/Ajout
        [Authorize]
        public ActionResult Ajout()
        {

            var wilaya = _repository.GetAllWilayas();
           
            ViewData["Wilayas"] = new SelectList(wilaya, "WilayaId", "name");
            return View();
        }

        [HttpPost, Authorize]
        public ActionResult Ajout(Store store)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    
                    var wilayaId = Request.Form["WilayaId"];

                    store.AddedByUser = User.Identity.Name;
                    store.UpdatedByUser = User.Identity.Name;
                    store.DateAdded = _date.GetDate();
                    store.LastDateUpdated = _date.GetDate();


                    _repository.Add(store, wilayaId);
                    _repository.Save();

                    return RedirectToAction("Wilaya", new { id = wilayaId });
                }
                // Todo Add exception handling.
                catch (Exception e) 
                {
                    ;
                   // ModelState.AddRuleViolations(dinner.GetRuleViolations());
                }
            }

            return RedirectToAction("Ajout");
        }

        public ActionResult Detail(int id)
        {
            var store = _repository.GetStoreById(id);
            
            return View(store);
        }

        [Authorize]
        public ActionResult Edit(int id)
        {
            var wilaya = _repository.GetAllWilayas();
            ViewData["Wilayas"] = new SelectList(wilaya, "WilayaId", "name");

            var store = _repository.GetStoreById(id);
            return View(store);
        }

        [HttpPost , Authorize]
        public ActionResult Edit(int id, FormCollection formValues)
        {
            try
            {

                var originalStore = _repository.GetStoreById(id);
   
                originalStore.Store.LastDateUpdated = _date.GetDate();
                originalStore.Store.UpdatedByUser = User.Identity.Name;

                UpdateModel(originalStore); 
                _repository.Save();

                return RedirectToAction("Detail", new { id });
            }
            catch
            {
                return View("Index");
            }
        }
        
        [Authorize]
        public ActionResult Supprimer(int id)
        {
            var store = _repository.GetStoreById(id);
            return View(store);
        }

        //
        // POST: /Toto/Delete/5

        [HttpPost, Authorize]
        public ActionResult Supprimer(int id, Store store)
        {
            try
            {
                _repository.MarkStoreAsDeleted(id);
                _repository.Save();
                return RedirectToAction("Index");

                
            }
            catch
            {
                return View();
            }
        }

        //todo add comment
        public ActionResult AjoutCommentaire()
        {

          

            //var wilaya = _repository.GetAllWilayas();

            //ViewData["Wilayas"] = new SelectList(wilaya, "WilayaId", "name");
            return View();
        }

        //todo add comment
        [HttpPost]
        public ActionResult AjoutCommentaire(Store store)
        {
            if (ModelState.IsValid)
            {
                try
                {

                    var wilayaId = Request.Form["WilayaId"];

                    store.AddedByUser = User.Identity.Name;
                    store.UpdatedByUser = User.Identity.Name;
                    store.DateAdded = _date.GetDate();
                    store.LastDateUpdated = _date.GetDate();


                    _repository.Add(store, wilayaId);
                    _repository.Save();

                    return RedirectToAction("Wilaya", new { id = wilayaId });
                }
                // Todo Add exception handling.
                catch (Exception e)
                {
                    ;
                    // ModelState.AddRuleViolations(dinner.GetRuleViolations());
                }
            }

            return RedirectToAction("Ajout");
        }
    }
}
