using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{
    public class Allegato : Anagrafica
    {


        public enum TIPO_FILE : ushort
        {
            TIPO_PDF_PARTE_I = 1,
            TIPO_PDF_PARTE_II = 2,
            TIPO_Verbale_104_ASL = 3
        }




        private long _id = long.MinValue;
        private long _idAllievo = long.MinValue;
        private TIPO_FILE _tipo_file ;
        private string _nome = string.Empty;
        private string _contentType = string.Empty;
        private byte[] _bytes = null;

        public long ID { get { return this._id; } }

        public string Nome { get { return this._nome; } }
        public string ContentType { get { return this._contentType; } }

        public byte[] Bytes { get { return this._bytes; } }


        public Allegato()
        {
        }

        public Allegato(long id)
        {
            this._id = id;
        }

        public Allegato(long id, string nome):this(id)
        {
            this._nome = nome;

        }
        public Allegato(long idAllievo, string nome, byte[] byteIn,string contentType, TIPO_FILE tipo, Utente user)
        {
            this._nome = nome;
            this._bytes = byteIn;
            this._idAllievo = idAllievo;
            this._contentType = contentType;
            this._tipo_file = tipo;
            base.User = user;
        }

        public bool Save()
        {
            bool ret = false;
                                
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@idAllievo",this._idAllievo));
            list.Add(new SP_Parameter("@nome", this._nome));
            list.Add(new SP_Parameter("@file", this._bytes));
            list.Add(new SP_Parameter("@fileType", this._contentType));
            list.Add(new SP_Parameter("@tipo",(int)this._tipo_file));
            list.Add(new SP_Parameter("@idUtente", base.User.ID));
            int num = base.Execute_Command("usp_Insert_Allegato", list);

            return ret;
            
        }

        public void Download()
        {
            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@id", this._id));
            List<object[]> test = base.Execute_SP("uspGetFile", list);
         
            if (test.Count > 0)
            {
                this._nome = test[0][0].ToString();
                this._bytes = (byte[])test[0][1];
                this._contentType = test[0][2].ToString();
            }



        }
    }
}