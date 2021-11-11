using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.Anagrafiche.Plessi
{
    public partial class Plessi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int val = -1;
                obds_Plessi.SelectParameters.Add("idIstituto", val.ToString());
            }

        }

        protected void gridViewPlessi_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                string id = gridViewPlessi.DataKeys[gridViewPlessi.EditIndex].Value.ToString();

                Response.Redirect(@"~/Anagrafiche/Plessi/Plesso_Edit.aspx?id=" + id);

            }
            else if (e.CommandName == "Cancel")

            {
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void ddlIstituto_SelectedIndexChanged(object sender, EventArgs e)
        {
            obds_Plessi.SelectParameters.Clear();
            obds_Plessi.SelectParameters.Add("idIstituto", ddlIstituto.SelectedValue);
            gridViewPlessi.DataBind();

        }

        protected void gridViewPlessi_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                string id = gridViewPlessi.DataKeys[gridViewPlessi.EditIndex].Value.ToString();

                Response.Redirect(@"~/Anagrafiche/Plessi/Plesso_Edit.aspx?id=" + id);

            }
            else if (e.CommandName == "Cancel")

            {
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}