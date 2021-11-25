using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.Anagrafiche.Istituti
{
    public partial class Istituto_New : _base
    {

        public string GetBool(bool val)
        {
            if (val)
                return "SI";
            else
                return "NO";
        }
        public string ID_AS
        {
            get
            {
                DropDownList ddl = (DropDownList)frm_Edit_Istiuto.Controls[0].FindControl("ddlAnnoScolastico");
                return ddl.SelectedValue;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            obsIstituto.InsertParameters.Add(new Parameter("idAnnoScolastico", System.Data.DbType.Int32, ID_AS));
            obsIstituto.UpdateParameters.Add(new Parameter("idAnnoScolastico", System.Data.DbType.Int32, ID_AS));
                                 
            if (Request.Params["id"] == null)
            {
                frm_Edit_Istiuto.ChangeMode(FormViewMode.Insert);
                obsIstituto.InsertParameters.Add("idUser", ID_User.ToString());


            }
            else
            {
                frm_Edit_Istiuto.ChangeMode(FormViewMode.Edit);
                obsIstituto.UpdateParameters.Add("idUser", ID_User.ToString());

                frm_Edit_Istiuto.ChangeMode(FormViewMode.Edit);
                if (obsIstituto.SelectParameters.Count == 0)
                    obsIstituto.SelectParameters.Add(new Parameter("id", System.Data.DbType.String, Request.Params["id"].ToString()));
                if (obsIstituto.DeleteParameters.Count == 0)
                    obsIstituto.DeleteParameters.Add(new Parameter("id", System.Data.DbType.String, Request.Params["id"].ToString()));



                obsPlesso.SelectParameters.Add("id", Request.Params["id"].ToString());

            }


        }

        protected void frmViewInsert_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {

            Response.Redirect(@"~/Anagrafiche/istituti/Istituti.aspx");

        }

        protected void frmViewInsert_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {

            obsIstituto.DataBind();
            GridView gdView = (GridView)frm_Edit_Istiuto.Controls[0].FindControl("gridViewIstituti");
        }

        protected void frmViewInsert_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel"))
            {
                Response.Redirect(@"~/Anagrafiche/istituti/Istituti.aspx");

            }
        }
    }
    }

