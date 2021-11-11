using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    public class Istituto : Anagrafica
    {
        const string SP_GET_ALL = "uspGetIstituti";

        private string _codiceMeccanografico = string.Empty;
        private string _nome = string.Empty;
        private AnnoScolastico _annoScolastico = null;
        private decimal _datoRealeIstituto = decimal.MinValue;
        private decimal _numeroCattedre = 0;

        public string CodiceMeccanografico { get { return this._codiceMeccanografico; } set { this._codiceMeccanografico = value; } }
        public string Nome { get { return this._nome; } set { this._nome = value; } }

        public decimal DatoRealeIstituto { get { return this._datoRealeIstituto; } }
        public decimal NumeroCattedre { get { return this._numeroCattedre; } }

        public AnnoScolastico AnnoScolastico { get { return this._annoScolastico; } set { this._annoScolastico = value; } }

        public string Descrizione_Completa
        { get { return this._codiceMeccanografico + " - " + this._nome; } }

        public long ID_AnnoScolastico
        {
            get { return this._annoScolastico.ID; }
        }

        public string AnnoScolastico_Descrizione
        {
            get { return this._annoScolastico.Descrizione; }
        }


        public Istituto() : base()
        {
        }
        public Istituto(long id) : base(id) { }


        public Istituto(long id, string descrizione) : base(id, descrizione) { }

        public Istituto(long id, string descrizione,string codice) : base(id, descrizione) {
            this._codiceMeccanografico = codice;
        }


        public Istituto(long id, string codice, string nome, int idannoScolastico) : base(id)
        {
            this._annoScolastico = new AnnoScolastico(idannoScolastico);
            this._codiceMeccanografico = codice;
            this._nome = nome;
        }

        public Istituto(long id, string codice, string nome, int idannoScolastico, string annoscolasticodescrizione) : this(id, codice, nome, idannoScolastico)
        {
            this._annoScolastico.Descrizione = annoscolasticodescrizione;
        }

        public Istituto(long id, string codice, string nome, int idannoScolastico, string annoscolasticodescrizione,
            decimal datoRealeIstituto,decimal numeroCattedre) : this(id, codice, nome, idannoScolastico, annoscolasticodescrizione)
        {
            this._datoRealeIstituto = datoRealeIstituto;
            this._numeroCattedre = numeroCattedre;
        }
        public List<Istituto> GetAll()
        {          
            List<Istituto> list = new List<Istituto>();

            List<object[]> test = base.Execute_SP(SP_GET_ALL);

            foreach (object[] t in test)
            {
                list.Add(new Istituto((long)t[0], t[1].ToString(), t[2].ToString(), (int)t[3], t[4].ToString())) ;
            }

            return list;

        }

        public List<Istituto> GetCattedre()
        {
            List<Istituto> list = new List<Istituto>();

            List<object[]> test = base.Execute_SP("uspGetIstituti_Cattedre");

            foreach (object[] t in test)
            {
                list.Add(new Istituto((long)t[0], t[1].ToString(), t[2].ToString(), (int)t[3], t[4].ToString(), (decimal)t[5]
                    , SQL_DAL.GetDBField_DECIMAL(t[6])));
            }

            return list;

        }

        public int Update(long id, string codiceMeccanografico, string descrizione, int idAnnoScolastico)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", id));
            list.Add(new SP_Parameter("@idannoScolastico", idAnnoScolastico));
            list.Add(new SP_Parameter("@codiceMaccanografico", codiceMeccanografico));
            list.Add(new SP_Parameter("@nome", descrizione));
            int num = base.Execute_Command("usp_Update_Istituto", list);

            return num;
        }

        public int UpdateCattedre(long id, int numeroCattedre)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", id));

            return 0;
        }

        public int Delete(long id)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", id));
            int num = base.Execute_Command("usp_Delete_Istituto", list);

            return num;
        }

        public Istituto Get(long id)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", id));
            List<object[]> test = base.Execute_SP("uspGetIstituto", list);
            Istituto ist = null;

            if (test.Count > 0)
            {
                ist = new Istituto((long)test[0][0]);
                ist.CodiceMeccanografico = test[0][1].ToString();
                ist.Nome = ist._descrizione = test[0][2].ToString();
                ist.AnnoScolastico = new AnnoScolastico((int)test[0][3]);
            }

            return ist;
        }

        public int Insert(string codiceMeccanografico,  string nome, int idAnnoScolastico)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@idannoScolastico", idAnnoScolastico));
            list.Add(new SP_Parameter("@codiceMaccanografico", codiceMeccanografico));
            list.Add(new SP_Parameter("@nome", nome));
            int num = base.Execute_Command("usp_Insert_Istituto", list);
            
            return num;


        }




    }
}