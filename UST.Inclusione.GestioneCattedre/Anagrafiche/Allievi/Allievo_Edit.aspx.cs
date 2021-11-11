using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.Anagrafiche.Allievi
{
    public partial class Allievo_Edit : System.Web.UI.Page
    {

        public string GetBool(string val)
        {
            if (val.Equals(true.ToString()))
                return "SI";
            else
                return "NO";
        }
        protected void Page_Load(object sender, EventArgs e)
        {           
            if (Request.Params["id"] == null)
            {
                frmViewAlunno.ChangeMode(FormViewMode.Insert);

                DropDownList ddlPlessi = (DropDownList)frmViewAlunno.Controls[0].FindControl("ddlPlessi");
                obds_Allievi.InsertParameters.Add("idPlesso", ddlPlessi.SelectedValue);


            }
            else
            {
                frmViewAlunno.ChangeMode(FormViewMode.Edit);
                obds_Allievi.SelectParameters.Clear();
                obds_Allievi.SelectParameters.Add(new Parameter("id", System.Data.DbType.String, Request.Params["id"].ToString()));

                obds_Allievi.DeleteParameters.Clear();
                obds_Allievi.DeleteParameters.Add(new Parameter("id", System.Data.DbType.String, Request.Params["id"].ToString()));





            }


        }

        protected void ddlIstituti_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)frmViewAlunno.Controls[0].FindControl("ddlIstituti");
            obds_Plessi.SelectParameters.Clear();
            obds_Plessi.SelectParameters.Add("idIstituto", ddl.SelectedValue);


            DropDownList ddlPlessi = (DropDownList)frmViewAlunno.Controls[0].FindControl("ddlPlessi");
            obds_Allievi.InsertParameters.Add("idPlesso", ddlPlessi.SelectedValue);


        }

        protected void ddlIstituti_Init(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)frmViewAlunno.Controls[0].FindControl("ddlIstituti");
            obds_Plessi.SelectParameters.Clear();
            obds_Plessi.SelectParameters.Add("idIstituto", ddl.SelectedValue);

        }

        protected void frmViewAlunno_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {           
            Response.Redirect(@"~/Anagrafiche/Allievi/Allievi.aspx");

        }

        protected void frmViewAlunno_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            Response.Redirect(@"~/Anagrafiche/Allievi/Allievi.aspx");

        }

        protected void frmViewAlunno_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            Response.Redirect(@"~/Anagrafiche/Allievi/Allievi.aspx");

        }

        protected void frmViewAlunno_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel"))
            {
                Response.Redirect(@"~/Anagrafiche/Allievi/Allievi.aspx");

            }
        }
    }
}