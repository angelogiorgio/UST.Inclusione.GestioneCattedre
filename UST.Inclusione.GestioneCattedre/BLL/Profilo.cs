using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    [Serializable]
    public class Profilo: Anagrafica
    {
        public Profilo(int id, string nome)
        {
            base._id = id;
            this._descrizione = nome;
        }
    }
}