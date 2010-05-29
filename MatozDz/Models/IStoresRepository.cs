using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace MatozDz.Models
{
    public interface IStoresRepository
    {
        IQueryable<Store> GetStores();
        IQueryable<Store> GetLastAddedStores(int? nbStoresTodDisplay);
        IQueryable<Store> GetStoresByWilaya(string wilaya);
        IQueryable<Wilaya> GetAllWilayas();
        void Save();
        void Add(Store store, string id);
        IQueryable<Store> GetStoresByWilayaId(int id);
        Store GetStoreById(int id);
        void MarkStoreAsDeleted(int id);
    }
}

