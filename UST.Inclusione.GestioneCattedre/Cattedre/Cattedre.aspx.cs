using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.Cattedre
{
    public partial class Cattedre : Anagrafiche._basePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            obds_Istituti.UpdateParameters.Add("idUser", ID_User.ToString());


        }
    }
}