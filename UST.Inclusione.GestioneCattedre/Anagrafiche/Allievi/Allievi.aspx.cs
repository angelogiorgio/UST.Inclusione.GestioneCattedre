using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.Anagrafiche.Allievi
{
    public partial class Allievi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ddlIstituti_TextChanged(object sender, EventArgs e)
        {
            gridViewAllievi.DataBind();
        }

        protected void ddlAnnoScolastico_SelectedIndexChanged(object sender, EventArgs e)
        {
            gridViewAllievi.DataBind();

        }

        protected void ddlobsGradi_SelectedIndexChanged(object sender, EventArgs e)
        {
            gridViewAllievi.DataBind();

        }

        protected void ddlPeriodi_SelectedIndexChanged(object sender, EventArgs e)
        {
            gridViewAllievi.DataBind();

        }

        protected void gridViewAllievi_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                string id = gridViewAllievi.DataKeys[gridViewAllievi.EditIndex].Value.ToString();

                Response.Redirect(@"~/Anagrafiche/Allievi/Allievo_Edit.aspx?id=" + id);

            }
            else if (e.CommandName == "Cancel")

            {
                Response.Redirect(Request.RawUrl);
            }

        }

        protected void ddlIstituti_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }

}