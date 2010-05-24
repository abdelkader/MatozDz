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
            var stores = _db.Store.Where(p => p.IsDeleted != true);
            return stores;
        }

        public IQueryable<Store> GetLastAddedStores(int nbStoresTodDisplay)
        {
            //todo verify nbStoresTodDisplay less than zero...
            var stores = _db.Store.Take(nbStoresTodDisplay).Where(p => p.IsDeleted != true);
            return stores;
        }

      
        public IQueryable<Store> GetStoresByWilaya(string wilaya)
        {
            var stores = _db.Store.Where(p => p.Wilaya.name.Equals(wilaya) && p.IsDeleted != true);
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
            store.IsDeleted = false;
            _db.AddToStore(store);
            
        }

        public IQueryable<Store> GetStoresByWilayaId(int id)
        {
            var stores = _db.Store.Where(p => p.Wilaya.WilayaId == id && p.IsDeleted != true);
            return stores;
        }

        public Store GetStoreById(int id)
        {
            var store = _db.Store.Include("Wilaya").Where(p => p.StoreId == id &&
                                                p.IsDeleted != true).FirstOrDefault();
            return store;
        }

        
        public void MarkStoreAsDeleted(int id)
        {
            var originalStore = GetStoreById(id);
            originalStore.IsDeleted = true;
        }
    }
}