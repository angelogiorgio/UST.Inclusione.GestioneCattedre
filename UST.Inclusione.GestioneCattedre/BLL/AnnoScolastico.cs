using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    public class AnnoScolastico : Anagrafica
    {
        const string SP_GET_ALL = "uspGetAnnoScolastico";


        public AnnoScolastico():base()
        { 
        }


        public AnnoScolastico(int id) : base(id)
        {

        }

        public AnnoScolastico(int id, string descrizione):base(id, descrizione)
        {
          
        }

        public List<Anagrafica> GetAll()
        {
            return base.GetAll(SP_GET_ALL);
        }


    }
}