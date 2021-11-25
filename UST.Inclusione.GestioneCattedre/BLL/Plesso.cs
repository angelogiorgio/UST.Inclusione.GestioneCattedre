using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    public class Plesso : Anagrafica
    {
        const string SP_GET_ALL = "uspGetPlessi";

        private string _codiceMeccanografico = string.Empty;
        private string _indirizzo = string.Empty;
        private string _città = string.Empty;

        private AnnoScolastico _annoScolastico = null;
        private Istituto _istituto = null;
        private Grado _grado = null;

        public Istituto Istituto
        {
            get { return this._istituto; }
            set { this._istituto = value; }
        }
       

        public long idGrado { get { return this._grado.ID; } }
        
        public long IdIstituto { get { return this._istituto.ID; } }

        public long idAnnoScolastico { get { return this._annoScolastico.ID; } }
        public string CodiceMeccanografico { get { return this._codiceMeccanografico; } set { this._codiceMeccanografico = value; } }
        public string Indirizzo { get { return this._indirizzo; } set { this._indirizzo = value; } }
        public string Città { get { return this._città; } set { this._città = value; } }

        public string CodiceMeccanograficoIstituto { get { return this._istituto.CodiceMeccanografico; } }

        public string Istituto_Descrizione { get { return this._istituto.Descrizione_Completa; } }


        public string AnnoScolastico_Descrizione
        {
            get { return this._annoScolastico.Descrizione; }
        }

        public string Grado_Descrizione
        {
            get { return this._grado.Descrizione; }
            set {  this._grado.Descrizione = value; }
        }


        public Plesso() : base()
        {
        }


        public Plesso(long id) : base(id)
        { }

        public Plesso(long id,long idIstituto) : base(id)
        { }

        public Plesso(int idAnnoScolastico, string codiceMeccanografico, string descrizione, long idIstituto, int idGrado)
        {

            base._descrizione = descrizione;
            this._codiceMeccanografico = codiceMeccanografico;
            this._istituto = new Istituto(idIstituto);
            this._annoScolastico = new AnnoScolastico(idAnnoScolastico);
            this._grado = new Grado(idGrado);
        }
    

        public Plesso(long id, string descrizione) : base(id, descrizione)
        {
            this._grado = new Grado();
        }
        public Plesso(long id, string descrizione, long idIstituto, string codiceMeccanografico, int idAnnoScolastico, string descrizioneAs,
            string codiceMeccanograficoIstituto, string città, string indirizzo, int idGrado, string descrizioneGrado) : base(id, descrizione)
        {
            this._annoScolastico = new AnnoScolastico(idAnnoScolastico, descrizioneAs);
            this._codiceMeccanografico = codiceMeccanografico;
            this._istituto = new Istituto(idIstituto);
            this._istituto.CodiceMeccanografico = codiceMeccanograficoIstituto;
            this._città = città;
            this._indirizzo = indirizzo;
            this._grado = new Grado(idGrado, descrizioneGrado);
        }

        public List<Plesso> GetAll(long idIstituto)
        {
            List<Plesso> list = new List<Plesso>();

            List<SQL_DAL.SP_Parameter> pars = new List<SQL_DAL.SP_Parameter>();

            pars.Add(new SQL_DAL.SP_Parameter("id_Istituto", idIstituto));

            List<object[]> test = base.Execute_SP(SP_GET_ALL, pars);


            foreach (object[] t in test)
            {
                list.Add(new Plesso((long)t[0], t[1].ToString(), (long)t[2], t[3].ToString(), (int)t[4], t[5].ToString(), t[6].ToString()
                    , t[7].ToString(), t[8].ToString(), (int)t[9], t[10].ToString()));
            }

            return list;

        }


        public int Insert()
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@idannoScolastico", this._annoScolastico.ID));
            list.Add(new SP_Parameter("@idIstituto", this._istituto.ID));
            list.Add(new SP_Parameter("@codiceMaccanografico", this._codiceMeccanografico));
            list.Add(new SP_Parameter("@descrizione", this._descrizione));
            list.Add(new SP_Parameter("@citta", this._città));
            list.Add(new SP_Parameter("@indirizzo", this._indirizzo));
            list.Add(new SP_Parameter("@idGrado", this._grado.ID));
            list.Add(new SP_Parameter("@idUtente", base.User.ID));

            int num = base.Execute_Command("usp_Insert_Plesso", list);

            List<SP_Parameter> pars = new List<SP_Parameter>();
            pars.Add(new SP_Parameter("@codiceMeccanografico", this._codiceMeccanografico));

            List<object[]> ret = base.Execute_SP("uspGetIDPlesso", pars);

            base._id = (long)ret[0][0];

            return num;
        }

        public int Insert(int idAnnoScolastico, long idIstituto, string codiceMeccanografico, string descrizione, string città, string indirizzo, int idGrado)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@idannoScolastico", idAnnoScolastico));
            list.Add(new SP_Parameter("@idIstituto", idIstituto));
            list.Add(new SP_Parameter("@codiceMaccanografico", codiceMeccanografico));
            list.Add(new SP_Parameter("@descrizione",descrizione));
            list.Add(new SP_Parameter("@citta", città));
            list.Add(new SP_Parameter("@indirizzo", indirizzo));
            list.Add(new SP_Parameter("@idGrado", idGrado));
            list.Add(new SP_Parameter("@idUtente", base.User.ID));


            int num = base.Execute_Command("usp_Insert_Plesso", list);

            return num;
        }

        public int Update(long id, int idAnnoScolastico, long idIstituto, string codiceMeccanografico, string descrizione, string città, string indirizzo,
            int idGrado)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", id));
            list.Add(new SP_Parameter("@idannoScolastico", idAnnoScolastico));
            list.Add(new SP_Parameter("@idIstituto", idIstituto));
            list.Add(new SP_Parameter("@codiceMaccanografico", codiceMeccanografico));
            list.Add(new SP_Parameter("@descrizione", descrizione));
            list.Add(new SP_Parameter("@citta", città));
            list.Add(new SP_Parameter("@indirizzo", indirizzo));
            list.Add(new SP_Parameter("@idGrado", idGrado));
            list.Add(new SP_Parameter("@idUtente", base.User.ID));


            int num = base.Execute_Command("usp_Update_Plesso", list);

            return num;
        }

        public Plesso Get(long id)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", id));
            List<object[]> test = base.Execute_SP("uspGetPlesso", list);
            Plesso plesso = null;

            if (test.Count > 0)
            {
                plesso = new Plesso((long)test[0][0]);
                plesso.CodiceMeccanografico = test[0][1].ToString();
                plesso.Descrizione = test[0][2].ToString();
                plesso._annoScolastico = new AnnoScolastico((int)test[0][3]);
                plesso._istituto = new Istituto((long)test[0][4]);
                plesso._indirizzo = test[0][5].ToString();
                plesso._città = test[0][6].ToString();
                plesso._grado = new Grado((int)test[0][7]);


            }

            return plesso;
        }

        public int Delete(long id)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", id));
            int num = base.Execute_Command("usp_Delete_Plesso", list);

            return num;
        }

    }
}
