using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    public class Grado: Anagrafica
    {
        const string SP_GET_ALL = "uspGetGradi";





        public Grado() : base()
        {
        }


        public Grado(int id) : base(id)
        { }

        public Grado(int id, string descrizione) : base(id, descrizione)
        {
        }

        public List<Anagrafica> GetAll()
        {
            return base.GetAll(SP_GET_ALL);
        }


    }
}