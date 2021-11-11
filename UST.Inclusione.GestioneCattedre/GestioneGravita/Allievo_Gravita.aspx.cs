using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.GestioneGravita
{
    public partial class Allievo_Gravita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["id"] == null)
            {
                frmViewAlunno.ChangeMode(FormViewMode.Insert);



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

       
        protected void frmViewAlunno_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
        //   Response.Redirect(@"~/GestioneGravita/Allievi_Gravita.aspx");

        }

        protected void frmViewAlunno_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if(e.CommandName.Equals("Cancel"))
                Response.Redirect(@"~/GestioneGravita/Allievi_Gravita.aspx");
        }
    }
}