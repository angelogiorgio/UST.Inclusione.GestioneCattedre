using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.Anagrafiche.Plessi
{
    public partial class Plesso_Edit : _base
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int val = -1;
            if (obds_Plessi.SelectParameters.Count == 0)
                obds_Plessi.SelectParameters.Add("idIstituto", val.ToString());

            if (Request.Params["id"] == null)
            {

                obsPlesso.InsertParameters.Add("idUser", ID_User.ToString());

            }
            else
            {
                frmView.DefaultMode = FormViewMode.Edit;
                obsPlesso.UpdateParameters.Add("idUser", ID_User.ToString());

                if (obsPlesso.SelectParameters.Count == 0)
                    obsPlesso.SelectParameters.Add(new Parameter("id", System.Data.DbType.String, Request.Params["id"].ToString()));

                if (obsPlesso.DeleteParameters.Count == 0)
                    obsPlesso.DeleteParameters.Add(new Parameter("id", System.Data.DbType.String, Request.Params["id"].ToString()));



            }
        }

        protected void frmView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            Response.Redirect(@"~/Anagrafiche/Plessi/Plessi.aspx");
        }
                          
        protected void frmView_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            obsPlesso.DataBind();
            gridViewPlessi.DataBind();
        }

        protected void ddlAnnoScolastico_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)frmView.Controls[0].FindControl("ddlIstituti");
            obds_Plessi.SelectParameters.Clear();
            obds_Plessi.SelectParameters.Add("idIstituto", ddl.SelectedValue);

        }

        protected void frmView_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel") )
            {
                Response.Redirect(@"~/Anagrafiche/Plessi/Plessi.aspx");

            }
        }

        protected void frmView_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            Response.Redirect(@"~/Anagrafiche/Plessi/Plessi.aspx");
        }
    } 
}