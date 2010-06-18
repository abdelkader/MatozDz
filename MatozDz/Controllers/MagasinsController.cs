using System;
using System.Linq;
using System.Web.Mvc;
using MatozDz.Helpers;
using MatozDz.Models;
using Webdiyer.WebControls.Mvc;
using MatozDz.ViewModel;

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

        //[OutputCache(Duration = 10, VaryByParam = "none")]
        public ActionResult WilayaList(string q)
        {
            
            var wilayas = _repository.GetAllWilayasThatStartWith(q).ToList();
            var listWilaya = new string[wilayas.Count()];
            
            //TODO: better way to handle this.
            for (var i = 0; i < wilayas.Count(); i++)
            {
                listWilaya[i] = wilayas[i].name;
            }
            
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


            if (!ModelState.IsValid)
            {
                var wilaya = _repository.GetAllWilayas();
                ViewData["Wilayas"] = new SelectList(wilaya, "WilayaId", "name");

                return View();
            }

               
            var wilayaId = Request.Form["WilayaId"];

            store.AddedByUser = User.Identity.Name;
            store.UpdatedByUser = User.Identity.Name;
            store.DateAdded = _date.GetDate();
            store.LastDateUpdated = _date.GetDate();


            _repository.Add(store, wilayaId);
            _repository.Save();

            return RedirectToAction("Wilaya", new { id = wilayaId });

            
        }


        [HandleError]
        public ActionResult Detail(int id)
        {
            var store = _repository.GetStoreById(id);
            
            if (store == null || store.Store == null)
            {
                TempData["error"] = "Aucun magasin avec cet ID";
                return View("error");

            }

            return View("Detail",store);
        }



        [Authorize]
        public ActionResult Edit(int id)
        {
            var store = _repository.GetStoreById(id);

            var wilaya = _repository.GetAllWilayas();
            ViewData["Wilayas"] = new SelectList(wilaya, "WilayaId", "name", store.Store.Wilaya.WilayaId);

            
            return View(store.Store);
        }

        [HttpPost , Authorize]
        public ActionResult Edit(int id, FormCollection formValues)
        {
            if (!ModelState.IsValid)
            {
                var originalStore = _repository.GetStoreById(id);
                var wilaya = _repository.GetAllWilayas();
                ViewData["Wilayas"] = new SelectList(wilaya, "WilayaId", "name", originalStore.Store.Wilaya.WilayaId);

                return View("Edit");
            }
            
            try
            {


                var originalStore = _repository.GetStoreById(id);
   
                originalStore.Store.LastDateUpdated = _date.GetDate();
                originalStore.Store.UpdatedByUser = User.Identity.Name;
                //TODO: Is there a better way...
                originalStore.Store.Wilaya = _repository.GetWilayaById(formValues["WilayaId"]);
                UpdateModel(originalStore.Store); 
                _repository.Save();

                return RedirectToAction("Detail", new { id });
            }
            catch (Exception e)
            {
                TempData["error"] = "Le magasin n'a pas pu être édité !\n erreur : "  + e.Message;
                return View("error");

                
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
        [HttpPost]
        [ValidateInput(false)] 
        public ActionResult AjoutCommentaire(Comment comment, int storeId)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    comment.UserPosted = User.Identity.Name;
                    comment.DatePosted = _date.GetDate();


                    _repository.AddComment(comment, storeId);
                    _repository.Save();

                    return RedirectToAction("Detail", new { id = storeId });
                }
                // Todo Add exception handling.
                catch (Exception e)
                {
                    ;
                    // ModelState.AddRuleViolations(dinner.GetRuleViolations());
                }
            }

            return RedirectToAction("Detail", new { id = storeId });
        }

        //todo add comment
        public ActionResult SupprimerCommentaire(int commentId)
        {

            _repository.DeleteComment(commentId);
            _repository.Save();

            return new EmptyResult();

            //return RedirectToAction("Detail", new { id = storeId });
        }
    }
}
