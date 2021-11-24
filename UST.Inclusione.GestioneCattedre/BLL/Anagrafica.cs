using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    [Serializable]
    public class Anagrafica: SQL_DAL
    {
        protected string _descrizione = string.Empty;
        protected long _id = int.MinValue;

        public string Descrizione
        {
            get { return this._descrizione; }
            set { this._descrizione = value; }
        }

        public long ID
        {
            get { return this._id; }
        }

        public Anagrafica()
        { 
        }


        public Anagrafica(long id)
        {   this._id = id;

        }

        public Anagrafica(long id, string descrizione):this(id)
        {
            this._descrizione = descrizione;
        }


        protected List<Anagrafica> GetAll(string spName)
        {
            List<Anagrafica> list = new List<Anagrafica>();

            List<object[]> test = base.Execute_SP(spName);

            foreach (object[] t in test)
            {
                list.Add(new Anagrafica((int)t[0], t[1].ToString()));

            }

            return list;
        }

    }
}