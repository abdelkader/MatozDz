using System.Linq;
using MatozDz.ViewModel;

namespace MatozDz.Models
{
    public class StoresRepository : IStoresRepository
    {
        private readonly MatozDzEntities _db;
        private const int NbStoreDisplay = 5;

        public StoresRepository()
        {
            _db = new MatozDzEntities();
        }

        public IQueryable<Store> GetStores()
        {
            var stores = _db.Store.Where(p => p.IsDeleted != true);
            return stores;
        }

        public IQueryable<Store> GetLastAddedStores(int? nbStoresTodDisplay)
        {

            var stores = _db.Store.Where(p => p.IsDeleted != true)
                                   .OrderByDescending(p => p.DateAdded)
                                   .Take(nbStoresTodDisplay?? NbStoreDisplay);
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

        public StoreDetail GetStoreById(int id)
        {
            var store = _db.Store.Include("Wilaya").Include("Comment").Where(p => p.StoreId == id &&
                                                p.IsDeleted != true).FirstOrDefault();





            return new StoreDetail() { Store = store};
        }

        
        public void MarkStoreAsDeleted(int id)
        {
            var originalStore = GetStoreById(id);
            originalStore.Store.IsDeleted = true;
        }




        public void AddComment(Comment comment, int storeId)
        {
            var originalStore = GetStoreById(storeId);
            comment.Store = originalStore.Store;
            
            _db.AddToComment(comment);
        }


        public void DeleteComment(int commentId)
        {
            var comment = _db.Comment.Where(p => p.Id == commentId ).FirstOrDefault();
            if (comment != null)
                _db.DeleteObject(comment);

        }



        


        public bool CheckUser(string userToRegister)
        {
            var user = _db.aspnet_Users.Where(p => p.UserName == userToRegister).FirstOrDefault();
            return (user != null);
        }

        
    }
}