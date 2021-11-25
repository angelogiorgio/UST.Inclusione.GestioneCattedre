using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UST.Inclusione.GestioneCattedre.BLL
{

    [Serializable]
    public class Utente : UST.Inclusione.GestioneCattedre.BLL.SQL_DAL
    {
        private long _id = int.MinValue;
        private Profilo _profilo = null;
        private string _username = string.Empty;
        private string _password = string.Empty;
        private string _cf = string.Empty;

        private string _cognome = string.Empty;
        private string _nome = string.Empty;

        public long ID
        {
            get { return this._id; }
        }

        public string Username
        {
            get { return this._username; }
        }

        public string Password
        {
            get { return this._password; }
        }

        public string CF
        {
            get { return this._cf; }
        }



        public string Cognome
        {
            get { return this._cognome; }
        }

        public string Nome
        {
            get { return this._nome; }
        }

        public Utente(long id)
        {
            this._id = id;
        }

        public Utente(string username, string password)
        {
            this._username = username;
            this._password = password;
        }


        public bool isAutenticade()
        {
            bool ret = false;

            List<SQL_DAL.SP_Parameter> list = new List<SP_Parameter>();
            list.Add(new SP_Parameter("@username", this._username));
            list.Add(new SP_Parameter("@pwd", this._password));
             

            List<object[]> test = base.Execute_SP("uspGetUser", list);

            if (test.Count > 0)
            {
                ret = true;
                this._id = int.Parse(test[0][0].ToString());
                this._cf = test[0][1].ToString();
                this._nome = test[0][2].ToString();
                this._cognome = test[0][3].ToString();
                this._username = test[0][4].ToString();
                this._password = test[0][5].ToString();
                this._profilo = new Profilo(int.Parse(test[0][6].ToString()), test[0][7].ToString());


            }

            return ret;
        }


    }
}