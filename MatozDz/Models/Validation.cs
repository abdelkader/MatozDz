using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace MatozDz.Models
{
    [MetadataType(typeof(StoreMataData))]
    public partial class Store
    {
    }

    public class StoreMataData
    {
        [Required(ErrorMessage = "Vous devez spécifier un nom de magasin.")]
        [DisplayName("Nom du magasin")]
        public String name { get; set; }


        [Required(ErrorMessage = "Vous devez spécifier une adresse.")]
        [DisplayName("Adresse")]
        public String address { get; set; }
       
        [DisplayName("Téléphone")]

        [RegularExpression(@"^\d{10}$", ErrorMessage = "Un téléphone doit contenir dix chiffres.")]
        public String phone { get; set; }

        [DisplayName("Site Web")]
        [RegularExpression(@"^(?#Protocol)(?:(?:ht|f)tp(?:s?)\:\/\/|~\/|\/)?(?#Username:Password)(?:\w+:\w+@)?(?#Subdomains)(?:(?:[-\w]+\.)+(?#TopLevel Domains)(?:com|org|net|gov|mil|biz|info|mobi|name|aero|jobs|museum|travel|[a-z]{2}))(?#Port)(?::[\d]{1,5})?(?#Directories)(?:(?:(?:\/(?:[-\w~!$+|.,=]|%[a-f\d]{2})+)+|\/)+|\?|#)?(?#Query)(?:(?:\?(?:[-\w~!$+|.,*:]|%[a-f\d{2}])+=?(?:[-\w~!$+|.,*:=]|%[a-f\d]{2})*)(?:&(?:[-\w~!$+|.,*:]|%[a-f\d{2}])+=?(?:[-\w~!$+|.,*:=]|%[a-f\d]{2})*)*)*(?#Anchor)(?:#(?:[-\w~!$+|.,*:=]|%[a-f\d]{2})*)?$",
            ErrorMessage = "site web non valide")]
        public String url { get; set; }

      

        [DisplayName("Adresse Email")]
        public String email { get; set; }

        [DisplayName("Date Ajoutée")]
        public DateTime? DateAdded { get; set; }

        [DisplayName("Date mise à jour le")]
        public DateTime? LastDateUpdated { get; set; }

    
    
       
    }
}
