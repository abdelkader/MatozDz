using System.Collections.Generic;
using MatozDz.Models;

namespace MatozDz.ViewModel
{
    public class StoreDetail
    {
        public Store Store { get; set; }
        public List<Wilaya> Wilayas { get; set; }
        public Comment Comment { get; set; }
        
    }
}
