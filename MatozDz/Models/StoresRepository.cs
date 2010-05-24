using System;
using System.Collections.Generic;
using System.Linq;

namespace MatozDz.Models
{
    public class StoresRepository : IStoresRepository
    {
        private readonly MatozDzEntities _db;

        public StoresRepository()
        {
            _db = new MatozDzEntities();
        }

        public IQueryable<Store> GetStores()
        {
            var stores = _db.Store;
            return stores;
        }

        public IQueryable<Store> GetLastAddedStores(int nbStoresTodDisplay)
        {
            //todo verify nbStoresTodDisplay less than zero...
            var stores = _db.Store.Take(nbStoresTodDisplay);
            return stores;
        }

      
        public IQueryable<Store> GetStoresByWilaya(string wilaya)
        {
            var stores = _db.Store.Where(p => p.Wilaya.name.Equals(wilaya));
            return stores;
        }

        public IQueryable<Wilaya> GetAllWilayas()
        {
            var wilayas = _db.Wilaya;
            return wilayas;
        }

        public void Save()
        {
            _db.SaveChanges();
        }

        public void Add(Store store, string id)
        {
            var wilayaId = int.Parse(id);
            var wilaya = _db.Wilaya.Where(p => p.WilayaId == wilayaId).FirstOrDefault();
            store.Wilaya = wilaya;
            _db.AddToStore(store);
            _db.SaveChanges();
        }

        public IQueryable<Store> GetStoresByWilayaId(int id)
        {
            var stores = _db.Store.Where(p => p.Wilaya.WilayaId == id);
            return stores;
        }
    }
}