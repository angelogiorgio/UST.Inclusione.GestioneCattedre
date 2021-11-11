using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.Anagrafiche.Istituti
{
    public partial class Istituti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gridViewIstituti.DataBind();
        }

        protected void gridViewIstituti_RowCommand(object sender, GridViewCommandEventArgs e)
        {
         
            if (e.CommandName == "Update")
            {
                string id = gridViewIstituti.DataKeys[gridViewIstituti.EditIndex].Value.ToString();

                Response.Redirect(@"~/Anagrafiche/Istituti/Istituto_Edit.aspx?id=" + id);

            }
            else if (e.CommandName == "Cancel")

            {
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}