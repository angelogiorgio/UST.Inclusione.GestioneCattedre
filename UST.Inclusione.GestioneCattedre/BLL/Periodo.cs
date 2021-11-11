using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    public class Periodo : Anagrafica
    {
        const string SP_GET_ALL = "uspGetPeriodi";


        public Periodo() : base()
        {
        }


        public Periodo(int id) : base(id)
        { }

        public Periodo(int id, string descrizione) : base(id, descrizione)
        {
        }

        public List<Anagrafica> GetAll()
        {
            return base.GetAll(SP_GET_ALL);
        }



    }
}