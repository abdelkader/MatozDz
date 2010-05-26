﻿using System;
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
            IQueryable<Store> stores;

            if (string.IsNullOrEmpty(id))
                //TODO:  Pagination...
                stores = _repository.GetStores();
            else
            {
                // Is URL containing Wilaya by Id or String ?
                int wilayaId;
                stores = int.TryParse(id, out wilayaId) ? 
                    _repository.GetStoresByWilayaId(wilayaId) :
                    _repository.GetStoresByWilaya(id);
            }

            return View(stores);
            
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

                    //store.AddedBy = "SomeUser";
                    store.AddedByUser = User.Identity.Name;
                    store.UpdatedByUser = User.Identity.Name;
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
                //store.AddedBy = "SomeUser";

                var originalStore = _repository.GetStoreById(id);
                originalStore.LastDateUpdated = DateTime.Now;
                originalStore.UpdatedByUser = User.Identity.Name;

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
    }
}