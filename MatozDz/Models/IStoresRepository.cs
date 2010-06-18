using System.Linq;
using MatozDz.ViewModel;

namespace MatozDz.Models
{
    public interface IStoresRepository
    {
        IQueryable<Store> GetStores();
        IQueryable<Store> GetLastAddedStores(int? nbStoresTodDisplay);
        IQueryable<Store> GetStoresByWilaya(string wilaya);
        IQueryable<Wilaya> GetAllWilayas();
        IQueryable<Wilaya> GetAllWilayasThatStartWith(string q);
        Wilaya GetWilayaById(string p);

        void Save();
        void Add(Store store, string id);
        IQueryable<Store> GetStoresByWilayaId(int id);
        StoreDetail GetStoreById(int id);
        void MarkStoreAsDeleted(int id);

        /* Comment handling methods...*/
        void AddComment(Comment comment, int storeId);
        void DeleteComment(int commentId);

        bool CheckUser(string user);



        
    }
}

