using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MatozDz.Helpers
{
    public interface IDateTime
    {
         DateTime GetDate(); 
    }

    public class CustomDateTime : IDateTime
    {
        public DateTime GetDate()
        {
            return DateTime.Now;
        }
    }
}
