using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.Anagrafiche
{
    public partial class _base : System.Web.UI.Page
    {

        public long ID_User
        {
            get { return this.User.ID; }
        }

        private BLL.Utente User
        {
            get
            {
                SiteMaster st = (SiteMaster)this.Master; ;
                return st.User;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}