using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    public class Allievo: SQL_DAL
    {
        static string YES ="SI";
        static string NO = "NO";
        static Boolean Get_Bool(string input)
        {
            Boolean ret = false;
            if (input.Equals(YES))
                ret = true;

            return ret;
        }

        private long _id = long.MinValue;
        private Plesso  _plesso = null;
        private AnnoScolastico _annoScolastico = null;
        private Periodo _periodo = null;


        private string _nome = string.Empty;
        private string _CF = string.Empty;
        private string _cognome = string.Empty;
        private string _sesso = string.Empty;
        private DateTime _dataNascita = DateTime.MinValue;
        private string _luogoNascita = string.Empty;
        private string _luogoDomicilio = string.Empty;
        private string _cittadinanza = string.Empty;
        private int _classe = int.MinValue;
        private int _numeroAllievi = int.MinValue;
        private int _oreSettimanaliPresenza = int.MinValue;
         private int _tempoScuolaClasse = int.MinValue;
        private int _tempoScuolaAllievo = int.MinValue;
        private int _oreRichieste_PiscoFisico = int.MinValue;
        private int _oreRichieste_Audioleso = int.MinValue;
        private int _oreRichieste_NonVedente = int.MinValue;
        private string _PrimoCodice_ICD10 = string.Empty;
        private string _SecondoCodice_ICD10 = string.Empty;
        private string _TerzoCodice_ICD10 = string.Empty;
        private int _annoUltimaCertificazione = int.MinValue;
        private int _numeroCertificazioniASL = int.MinValue;
        private bool _pdf_parte_I = false;
        private bool _pdf_parte_II = false;
        private bool _pdf_ASL_104 = false;
        private int _gravita = 0;
        private Allegato _allegato1 = null;
        private Allegato _allegato2 = null;
        private Allegato _allegato_ASL_104 = null;
        private decimal _datoReale = decimal.MinValue;

        public decimal DatoReale { get { return this._datoReale; } }

        public string NomeFile_ASL_014 { get { return this._allegato_ASL_104.Nome; } }

        public string NomeFile_2 { get { return this._allegato2.Nome; } }
        
        public string NomeFile_1 { get { return this._allegato1.Nome; } }

        public long ID_file_PDF_Parte_I { get { return this._allegato1.ID; } }

        public long ID_file_PDF_Parte_II { get { return this._allegato2.ID; } }

        public long ID_file_ASL_104 { get { return this._allegato_ASL_104.ID; } }



        public int Gravita { set { this._gravita = value; }
            get { return this._gravita; }
        }


        public string PrimoCodice_ICD10 { set { this._PrimoCodice_ICD10 = value; } get { return this._PrimoCodice_ICD10; } }

        public string SecondoCodice_ICD10 { set { this._SecondoCodice_ICD10 = value; } get { return this._SecondoCodice_ICD10; } }

        public string TerzoCodice_ICD10 { set { this._TerzoCodice_ICD10 = value; } get { return this._TerzoCodice_ICD10; } }

        public long idPlesso { get { return this._plesso.ID; } }

       public string Plesso_Descrizione { get { return this._plesso.Descrizione; } }
                       
        public long idIstituto { get { return this._plesso.IdIstituto; } }

        public string Istituto_Descrizione { get { return this._plesso.Istituto_Descrizione ; } }

        public long idPeriodo { get { return this._periodo.ID; } }

        public string Periodo_Descrizione { get { return this._periodo.Descrizione; } }


        public long idAnnoScolastico { get { return this._annoScolastico.ID; } }

        public string Anno_Descrizione { get { return this._annoScolastico.Descrizione; } }
                     
        public string Grado_Descrizione { get { return this._plesso.Grado_Descrizione; } }
                          
        public int NumeroAllievi 
        { 
            get { return this._numeroAllievi; }
            set { this._numeroAllievi = value; }
        }

        public int NumeroCertificazioniASL
        {
            get { return this._numeroCertificazioniASL; }
            set { this._numeroCertificazioniASL = value; }
        }
        
        public string Cittadinanza
        {
            get { return this._cittadinanza; }
            set { this._cittadinanza = value; }
        }

        public int Classe
        {
            get { return this._classe; }
            set { this._classe = value; }
        }

        public int TempoScuolaClasse
        {
            get { return this._tempoScuolaClasse; }
            set { this._tempoScuolaClasse = value; }
        }


        public int TempoScuolaAllievo
        {
            get { return this._tempoScuolaAllievo; }
            set { this._tempoScuolaAllievo = value; }
        }

        public int OreRichieste_PiscoFisico { get { return this._oreRichieste_PiscoFisico; } }

        public int OreRichieste_NonVedente { get { return this._oreRichieste_NonVedente; } }

        public int OreRichieste_Audioleso { get { return this._oreRichieste_Audioleso; } }

        public int OreSettimanaliPresenza { get { return this._oreSettimanaliPresenza; } }
        public string Sesso { get { return this._sesso; } }
        public string LuogoDomicilio
        {
            get { return this._luogoDomicilio; }
            set
            {
                this._luogoDomicilio = value;
            }
        }

        public string LuogoNascita
        {
            get { return this._luogoNascita; }
            set
            {
                this._luogoNascita = value;
            }
        }
        
        public DateTime DataNascita { get { return this._dataNascita; } }
        public string CF
        {
            get { return this._CF; }
            set
            {
                this._CF = value;
            }
        }

        public long ID
        {
            get { return this._id; }
            set
            {
                this._id = value;
            }
        }

        public string Nome
        {
            get { return this._nome; }
            set
            {
                this._nome = value;
            }
        }
        public string Cognome
        {
            get { return this._cognome; }
            set
            {
                this._cognome = value;
            }
        }

        public bool PDF_Parte_I { get { return this._pdf_parte_I; } }
        
        public bool PDF_Parte_II { get { return this._pdf_parte_II; } }

        public bool ASL_104 { get { return this._pdf_ASL_104; } }


        public int AnnoUltimaCertificazione
        {
            get { return this._annoUltimaCertificazione; }
            set { this._annoUltimaCertificazione = value; }
        }




        public Allievo()
        {
            this._allegato1 = new Allegato();
            this._allegato2 = new Allegato();
            this._allegato_ASL_104 = new Allegato();
            
        }

        public Allievo(int idAnnoScolastico, int idPeriodo, long idIstituto, string codiceMeccanograficoPlesso, string descrizionePlesso, string cf, string nome, string cognome,
                           string sesso, DateTime dataNascita, string luogoNascita,
                           string luogoDomicilio, string cittadinanza, int classe, int numeroAllievi, int tempoScuolaClasse, int oreSettimanaliPresenza,
                           int oreRichieste_PsicoFisico, int oreRichieste_Audioleso, int oreRichieste_NonVedente, string primoCodice, string secondoCodice,
                           string terzoCodice, int numeroCertificazioniASL, int annoUltimaCertificazione, bool pdf_parte_I, bool pdf_parte_II, 
                           bool ASL_104
                                , int idGrado, int gravita,decimal datoReale):this()
        {
            this._annoScolastico = new AnnoScolastico(idAnnoScolastico);
            this._plesso = new Plesso(idAnnoScolastico, codiceMeccanograficoPlesso, descrizionePlesso,idIstituto,idGrado);
            this._periodo = new Periodo(idPeriodo);
            this._CF = cf;
            this._nome = nome;
            this._cognome = cognome;
            this._annoUltimaCertificazione = annoUltimaCertificazione;
            this._sesso = sesso;
            this._dataNascita = dataNascita;
            this._luogoNascita = luogoNascita;
            this._luogoDomicilio = luogoDomicilio;
            this._cittadinanza = cittadinanza;
            this._classe = classe;
            this._numeroAllievi = numeroAllievi;
            this._tempoScuolaClasse = tempoScuolaClasse;
            this._tempoScuolaAllievo = tempoScuolaClasse;
            this._oreRichieste_PiscoFisico = oreRichieste_PsicoFisico;
            this._oreRichieste_Audioleso = oreRichieste_Audioleso;
            this._oreRichieste_NonVedente = oreRichieste_NonVedente;
            this._PrimoCodice_ICD10 = primoCodice;
            this._SecondoCodice_ICD10 = secondoCodice;
            this._TerzoCodice_ICD10 = terzoCodice;
            this._numeroCertificazioniASL = numeroCertificazioniASL;
            this._pdf_parte_I = pdf_parte_I;
            this._pdf_parte_II = pdf_parte_II;
            this._oreSettimanaliPresenza = oreSettimanaliPresenza;
            this._pdf_ASL_104 = ASL_104;
            this._gravita = gravita;
            this._datoReale = datoReale;



        }
        public Allievo(int idAnnoScolastico, int idPeriodo,long id_Plesso, string cf, string nome, string cognome, 
                            string sesso,DateTime dataNascita, string luogoNascita,
                            string luogoDomicilio, string cittadinanza, int classe, int numeroAllievi, int tempoScuolaClasse, int oreSettimanaliPresenza, 
                            int oreRichieste_PsicoFisico, int oreRichieste_Audioleso, int oreRichieste_NonVedente, string primoCodice, string secondoCodice, 
                            string terzoCodice, int numeroCertificazioniASL, int annoUltimaCertificazione,bool pdf_parte_I, bool pdf_parte_II,
                            bool ASL_104, string descrizioneGrado, string descrizionePlesso, long idIstituto,string codicemeccanograficoIstituto, string descrizioneIstituto
                            , string descrizionePeriodo, int gravita, decimal datoReale) : this()
        {
            this._annoScolastico = new AnnoScolastico(idAnnoScolastico);
            this._plesso = new Plesso(id_Plesso, descrizionePlesso);
            this._plesso.Istituto = new Istituto(idIstituto, codicemeccanograficoIstituto, descrizioneIstituto);
            this._periodo = new Periodo(idPeriodo, descrizionePeriodo);
      
            this._plesso.Grado_Descrizione = descrizioneGrado;
            this._CF = cf;
            this._nome = nome;
            this._cognome = cognome;
            this._annoUltimaCertificazione = annoUltimaCertificazione;
            this._sesso = sesso;
            this._dataNascita = dataNascita;
            this._luogoNascita = luogoNascita;
            this._luogoDomicilio = luogoDomicilio;
            this._cittadinanza = cittadinanza;
            this._classe = classe;
            this._numeroAllievi = numeroAllievi;
            this._tempoScuolaClasse = tempoScuolaClasse;
            this._tempoScuolaAllievo = tempoScuolaClasse;
            this._oreRichieste_PiscoFisico = oreRichieste_PsicoFisico;
            this._oreRichieste_Audioleso = oreRichieste_Audioleso;
            this._oreRichieste_NonVedente = oreRichieste_NonVedente;
            this._PrimoCodice_ICD10 = primoCodice;
            this._SecondoCodice_ICD10 = secondoCodice;
            this._TerzoCodice_ICD10 = terzoCodice;
            this._numeroCertificazioniASL = numeroCertificazioniASL;
            this._pdf_parte_I = pdf_parte_I;
            this._pdf_parte_II = pdf_parte_II;
            this._oreSettimanaliPresenza = oreSettimanaliPresenza;
            this._pdf_ASL_104 = ASL_104;
            this._gravita = gravita;
            this._datoReale = datoReale;
        }

        public Allievo(long ID, int idAnnoScolastico, int idPeriodo, long idPlesso, string cf, string cognome, string nome, string sesso,
                        DateTime datanascita, string luogoNascita, string luogoDomicilio, string cittadinanza, int classe, int numeroAllieviClasse,
                        int tempoScuolaClasse, int oreSettimanaliFrequenza, int oreRichieste_PsicoFisico, int oreRichieste_Audioleso, int oreRichieste_NonVedente, string primoCodice, string secondoCodice,
                            string terzoCodice, int numeroCertificazioniASL, int annoUltimaCertificazione,bool pdf_parte_I, bool pdf_parte_II, bool ASL,
                            string descrizioneGrado, string descrizionePlesso, long idIstituto, string codicemeccanograficoIstituto, string descrizioneIstituto
                            , string descrizionePeriodo, int gravita,decimal datoReale) :
                            this(idAnnoScolastico, idPeriodo,idPlesso, cf, cognome, nome, sesso, datanascita,
                                            luogoNascita, luogoDomicilio, cittadinanza, classe, numeroAllieviClasse, tempoScuolaClasse, oreSettimanaliFrequenza,
                                            oreRichieste_PsicoFisico, oreRichieste_Audioleso, oreRichieste_NonVedente, primoCodice, secondoCodice,
                                            terzoCodice, numeroCertificazioniASL, annoUltimaCertificazione, pdf_parte_I, pdf_parte_II, ASL, descrizioneGrado,
                                              descrizionePlesso,  idIstituto,  codicemeccanograficoIstituto,  descrizioneIstituto
                            ,  descrizionePeriodo, gravita, datoReale)
        {
            this._id = ID;
            this.Get_Allegati();
        }
        public Allievo(long ID, string CF,string nome, string cognome)
        {
            this._id = ID;
            this._nome = nome;
            this._cognome = cognome;
            this._CF = CF;
        }
        public List<Allievo> GetAllievi()
        {
            List<Allievo> allievi = new List<Allievo>();
          
            return allievi;
        }


        public int Insert(int idPlesso, int idAnnoScolastico, int idPeriodo, string cf,string nome, string cognome, string sesso, string dataNascita, string luogoNascita, string luogoDomicilio,
            string cittadinanza, string classe, string numeroAllieviClasse, string tempoScuolaClasse, string oreSettimanaliFrequenza,
            string oreRichieste_PsicoFisiche, string oreRichieste_Audiolesi, string oreRichieste_NonVedente,
            string primoCodice, string secondoCodice, string terzoCodice, string annoUltimaCertificazione,
            string asl_NumeroCertificazioni, string pdf_Parte_I, string pdf_Parte_II, string asl_104)
        {
            this._plesso = new Plesso(idPlesso);
            this._annoScolastico = new AnnoScolastico(idAnnoScolastico);
            this._periodo = new Periodo(idPeriodo);
            this._CF = cf;
            this._nome = nome;
            this._cognome = cognome;
            this._sesso = sesso;
            if (DateTime.TryParse(dataNascita, out this._dataNascita) == false)
                this._dataNascita = new DateTime(2000, 1, 1);

            this._luogoNascita = luogoNascita;
            this._luogoDomicilio = luogoDomicilio;
            this._cittadinanza = cittadinanza;
            this._classe =int.Parse(classe);
            this._numeroAllievi = int.Parse(numeroAllieviClasse);
            this._tempoScuolaAllievo = int.Parse(tempoScuolaClasse);
            this._oreSettimanaliPresenza = int.Parse(oreSettimanaliFrequenza);
            this._oreRichieste_PiscoFisico = int.Parse(oreRichieste_PsicoFisiche);
            this._oreRichieste_Audioleso = int.Parse(oreRichieste_Audiolesi);
            this._oreRichieste_NonVedente = int.Parse(oreRichieste_NonVedente);
            this._PrimoCodice_ICD10 = primoCodice;
            this._SecondoCodice_ICD10 = secondoCodice;
            this._TerzoCodice_ICD10 = terzoCodice;
            this._annoUltimaCertificazione = int.Parse(annoUltimaCertificazione);
            this._numeroCertificazioniASL = int.Parse(asl_NumeroCertificazioni);
            this._pdf_parte_I = Get_Bool(pdf_Parte_I);
            this._pdf_parte_II =Get_Bool(pdf_Parte_II);
            this._pdf_ASL_104 = Get_Bool(asl_104);

            int num = InsertDB();

            return num;
        }

        public int Insert()
        {
            this._plesso.Insert();

           
            int num = InsertDB();

            return num;

        }

        public int InsertDB()
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@annoScolastico", this._annoScolastico.ID));
            list.Add(new SP_Parameter("@idPlesso", this._plesso.ID));
            list.Add(new SP_Parameter("@idPeriodo", this._periodo.ID));
            list.Add(new SP_Parameter("@annoUltimaCertificazione", this._annoUltimaCertificazione));
            list.Add(new SP_Parameter("@ASL_104", this._numeroCertificazioniASL));
            list.Add(new SP_Parameter("@CF", this._CF));
            list.Add(new SP_Parameter("@Cittadinanza", this._cittadinanza));
            list.Add(new SP_Parameter("@Classe", this._classe));
            list.Add(new SP_Parameter("@Cognome", this.Cognome));
            list.Add(new SP_Parameter("@DataNascita", this._dataNascita));
            list.Add(new SP_Parameter("@LuogoNascita", this._luogoNascita));
            list.Add(new SP_Parameter("@LuogoDomicilio", this._luogoDomicilio));
            list.Add(new SP_Parameter("@Nome", this._nome));
            list.Add(new SP_Parameter("@PrimoCodice", this._PrimoCodice_ICD10));
            list.Add(new SP_Parameter("@SecondoCodice", this._SecondoCodice_ICD10));
            list.Add(new SP_Parameter("@TerzoCodice", this._TerzoCodice_ICD10));
            list.Add(new SP_Parameter("@Sesso", this._sesso));
            list.Add(new SP_Parameter("@PDF_parte_I", this._pdf_parte_I));
            list.Add(new SP_Parameter("@PDF_parte_II", this._pdf_parte_II));
            list.Add(new SP_Parameter("@oreSettimanaliFreqeunza", this._oreSettimanaliPresenza));
            list.Add(new SP_Parameter("@oreRichieste_PsicoFisiche", this._oreRichieste_PiscoFisico));
            list.Add(new SP_Parameter("@oreRichieste_NonVedente", this._oreRichieste_NonVedente));
            list.Add(new SP_Parameter("@oreRichieste_AudioLesi", this._oreRichieste_Audioleso));
            list.Add(new SP_Parameter("@numeroAllieviClasse", this._numeroAllievi));
            list.Add(new SP_Parameter("@numeroCertificazioniASL", this._numeroCertificazioniASL));
            list.Add(new SP_Parameter("@tempoScuolaClasse", this._tempoScuolaClasse));


            int num = base.Execute_Command("usp_Insert_Allievo", list);

            return num;

        }

        //int idAnnoScolastico, int idPeriodo, int idIstituto
        public List<Allievo> GetAllievi_Istituto_Periodo(int idAnnoScolastico, int idIstituto, int idPeriodo)
        {
            List<Allievo> allievi = new List<Allievo>();

            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id_AnnoScolastico", idAnnoScolastico));
            list.Add(new SP_Parameter("@id_Istituto", idIstituto));
            list.Add(new SP_Parameter("@id_Periodo", idPeriodo));


            List<object[]> obs = base.Execute_SP("uspGetAllievi_Periodo_Anno_Istituto", list);

            foreach (object[] t in obs)
            {
                allievi.Add(new Allievo((long)t[0], (int)t[1], (int)t[2], (long)t[3], t[4].ToString(), t[5].ToString(), t[6].ToString(), 
                                t[7].ToString(),(DateTime)t[8], t[9].ToString(), t[10].ToString(), t[11].ToString(), (int)t[12], (int)t[13], (int)t[14], (int)t[15], (int)t[16],
                                (int)t[17], (int)t[18], t[19].ToString(), t[20].ToString(), t[21].ToString(), (int)t[22], (int)t[23], (bool)t[24], (bool)t[25], 
                                (bool)t[26], t[27].ToString(), t[28].ToString(), (long)t[29], t[30].ToString(), t[31].ToString(), 
                                t[32].ToString(),(int)t[33], SQL_DAL.GetDBField_DECIMAL(t[34])));
     
            }
            

            return allievi;
        }



        public Allievo Get(long id)
        {
            Allievo al = null;

            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", id));

            List<object[]> obs = base.Execute_SP("uspGetAllievo", list);

            object[] t = obs[0];

            al = new Allievo((long)t[0], (int)t[1], (int)t[2], (long)t[3], t[4].ToString(), t[5].ToString(), t[6].ToString(), t[7].ToString(),
                                (DateTime)t[8], t[9].ToString(), t[10].ToString(), t[11].ToString(), (int)t[12], (int)t[13], (int)t[14], (int)t[15], (int)t[16],
                                (int)t[17], (int)t[18], t[19].ToString(), t[20].ToString(), t[21].ToString(), (int)t[22], (int)t[23], (bool)t[24], (bool)t[25],
                                (bool)t[26], t[27].ToString(), t[28].ToString(), (long)t[29], t[30].ToString(), t[31].ToString(), t[32].ToString(), (int)t[33], (decimal)t[34]
                      );

            al.Get_Allegati();
        

            return al;
        }



        public void Get_Allegati()
        {          
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", this._id));

            List<object[]> obs = base.Execute_SP("uspGetAllievo_Allegati", list);

            foreach (object[] t in obs)
            {
                if (SQL_DAL.GetDBField_INT(t[3]).Equals((int)Allegato.TIPO_FILE.TIPO_PDF_PARTE_I))
                {
                    this._allegato1 = new Allegato(SQL_DAL.GetDBField_LONG(t[1]), SQL_DAL.GetDBField_STRING(t[4]));
                }
                else if (SQL_DAL.GetDBField_INT(t[3]).Equals((int)Allegato.TIPO_FILE.TIPO_PDF_PARTE_II))
                {
                    this._allegato2 = new Allegato(SQL_DAL.GetDBField_LONG(t[1]), SQL_DAL.GetDBField_STRING(t[4]));
                }
                else if (SQL_DAL.GetDBField_INT(t[3]).Equals((int)Allegato.TIPO_FILE.TIPO_Verbale_104_ASL))
                {
                    this._allegato_ASL_104 = new Allegato(SQL_DAL.GetDBField_LONG(t[1]), SQL_DAL.GetDBField_STRING(t[4]));
                }


            }


        }


        public int Update(int ID,int idPlesso, int idAnnoScolastico, int idPeriodo, 
            string cf, string nome, string cognome, string sesso, string dataNascita, string luogoNascita, string luogoDomicilio,
            string cittadinanza, string classe, string numeroAllievi, string TempoScuolaClasse, string OreSettimanaliPresenza,
            string OreRichieste_PiscoFisico, string OreRichieste_Audioleso, string OreRichieste_NonVedente,
            string PrimoCodice_ICD10, string SecondoCodice_ICD10, string TerzoCodice_ICD10, string AnnoUltimaCertificazione,
            string NumeroCertificazioniASL, bool PDF_Parte_I, bool PDF_Parte_II, bool asl_104)
        {
            this._id = ID;
            this._plesso = new Plesso(idPlesso);
            this._annoScolastico = new AnnoScolastico(idAnnoScolastico);
            this._periodo = new Periodo(idPeriodo);
            this._CF = cf;
            this._nome = nome;
            this._cognome = cognome;
            this._sesso = sesso;
            if (DateTime.TryParse(dataNascita, out this._dataNascita) == false)
                this._dataNascita = new DateTime(2000, 1, 1);

            this._luogoNascita = luogoNascita;
            this._luogoDomicilio = luogoDomicilio;
            this._cittadinanza = cittadinanza;
            this._classe = int.Parse(classe);
            this._numeroAllievi = int.Parse(numeroAllievi);
            this._tempoScuolaClasse = int.Parse(TempoScuolaClasse);
            this._oreSettimanaliPresenza = int.Parse(OreSettimanaliPresenza);
            this._oreRichieste_PiscoFisico = int.Parse(OreRichieste_PiscoFisico);
            this._oreRichieste_Audioleso = int.Parse(OreRichieste_Audioleso);
            this._oreRichieste_NonVedente = int.Parse(OreRichieste_NonVedente);
            this._PrimoCodice_ICD10 = PrimoCodice_ICD10;
            this._SecondoCodice_ICD10 = SecondoCodice_ICD10;
            this._TerzoCodice_ICD10 = TerzoCodice_ICD10;
            this._annoUltimaCertificazione = int.Parse(AnnoUltimaCertificazione);
            this._numeroCertificazioniASL = int.Parse(NumeroCertificazioniASL);
            this._pdf_parte_I = PDF_Parte_I;
            this._pdf_parte_II = PDF_Parte_II;
            this._pdf_ASL_104 = asl_104;


            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", this.ID));
            list.Add(new SP_Parameter("@annoScolastico", this._annoScolastico.ID));
            list.Add(new SP_Parameter("@idPlesso", this._plesso.ID));
            list.Add(new SP_Parameter("@idPeriodo", this._periodo.ID));
            list.Add(new SP_Parameter("@annoUltimaCertificazione", this._annoUltimaCertificazione));
            list.Add(new SP_Parameter("@ASL_104", this._numeroCertificazioniASL));
            list.Add(new SP_Parameter("@CF", this._CF));
            list.Add(new SP_Parameter("@Cittadinanza", this._cittadinanza));
            list.Add(new SP_Parameter("@Classe", this._classe));
            list.Add(new SP_Parameter("@Cognome", this.Cognome));
            list.Add(new SP_Parameter("@DataNascita", this._dataNascita));
            list.Add(new SP_Parameter("@LuogoNascita", this._luogoNascita));
            list.Add(new SP_Parameter("@LuogoDomicilio", this._luogoDomicilio));
            list.Add(new SP_Parameter("@Nome", this._nome));
            list.Add(new SP_Parameter("@PrimoCodice", this._PrimoCodice_ICD10));
            list.Add(new SP_Parameter("@SecondoCodice", this._SecondoCodice_ICD10));
            list.Add(new SP_Parameter("@TerzoCodice", this._TerzoCodice_ICD10));
            list.Add(new SP_Parameter("@Sesso", this._sesso));
            list.Add(new SP_Parameter("@PDF_parte_I", this._pdf_parte_I));
            list.Add(new SP_Parameter("@PDF_parte_II", this._pdf_parte_II));
            list.Add(new SP_Parameter("@oreSettimanaliFreqeunza", this._oreSettimanaliPresenza));
            list.Add(new SP_Parameter("@oreRichieste_PsicoFisiche", this._oreRichieste_PiscoFisico));
            list.Add(new SP_Parameter("@oreRichieste_NonVedente", this._oreRichieste_NonVedente));
            list.Add(new SP_Parameter("@oreRichieste_AudioLesi", this._oreRichieste_Audioleso));
            list.Add(new SP_Parameter("@numeroAllieviClasse", this._numeroAllievi));
            list.Add(new SP_Parameter("@numeroCertificazioniASL", this._numeroCertificazioniASL));
            list.Add(new SP_Parameter("@tempoScuolaClasse", this._tempoScuolaClasse));


            int num = base.Execute_Command("usp_Update_Allievo", list);

            return num;

        }

        public int SetGravita(int ID,
            string cf, string nome, string cognome, string sesso, string dataNascita, string luogoNascita, string luogoDomicilio,
            string cittadinanza, string classe, string numeroAllievi, string TempoScuolaClasse, string OreSettimanaliPresenza,
            string OreRichieste_PiscoFisico, string OreRichieste_Audioleso, string OreRichieste_NonVedente,
            string PrimoCodice_ICD10, string SecondoCodice_ICD10, string TerzoCodice_ICD10, string AnnoUltimaCertificazione,
            string NumeroCertificazioniASL, bool PDF_Parte_I, bool PDF_Parte_II, bool asl_104, int gravita, object datoReale)
        {
            this._id = ID;
            this._gravita = gravita;
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", this.ID));
            list.Add(new SP_Parameter("@gravita", this._gravita));

            int num = base.Execute_Command("usp_Set_Allievo_Gravita", list);

            return num;

        }


        public int Delete(long id)
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", id));
            int num = base.Execute_Command("usp_Delete_Allievo", list);

            return num;
        }
    }
}