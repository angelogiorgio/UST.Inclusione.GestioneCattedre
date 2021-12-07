using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.GestioneGravita
{
    public partial class Gestione_Allegati : Anagrafiche._basePage
    {
        private long ID_Allievo
        {
            get
            {
                long id = long.MinValue;
                Label lbl = (Label)frmViewAlunno.Controls[0].FindControl("lblID");

                id = long.Parse(lbl.Text);


                return id;
            }
        }


        private long ID_File_Parte_I
        {
            get
            {
                long id = long.MinValue;
                Label lbl = (Label)frmViewAlunno.Controls[0].FindControl("lbl_ID_PDF_Parte_I");

                id = long.Parse(lbl.Text);


                return id;
            }
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
            ll
        }


        protected void frmViewAlunno_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Save"))
            {
                FileUpload file1 = (FileUpload)frmViewAlunno.Controls[0].FindControl("file_PDF_Parte_I");

                if (!file1.FileName.Equals(string.Empty))
                {

                    using (Stream fs = file1.PostedFile.InputStream)
                    {
                        using (BinaryReader br = new BinaryReader(fs))
                        {
                            byte[] bytes = br.ReadBytes((Int32)fs.Length);

                            //This line of code is reading the bytes .    
                            BLL.Allegato allegato_pdf_Parte_I = new BLL.Allegato(ID_Allievo, file1.FileName, bytes, file1.PostedFile.ContentType, BLL.Allegato.TIPO_FILE.TIPO_PDF_PARTE_I, base.Utente);
                            allegato_pdf_Parte_I.Save();                          
                        }
                    }
                }

                FileUpload file2 = (FileUpload)frmViewAlunno.Controls[0].FindControl("file_PDF_Parte_II");

                if (!file2.FileName.Equals(string.Empty))
                {

                    using (Stream fs = file1.PostedFile.InputStream)
                    {
                        using (BinaryReader br = new BinaryReader(fs))
                        {
                            byte[] bytes = br.ReadBytes((Int32)fs.Length);

                            //This line of code is reading the bytes .    
                            BLL.Allegato allegato_pdf_Parte_I = new BLL.Allegato(ID_Allievo, file2.FileName, bytes, file2.PostedFile.ContentType, BLL.Allegato.TIPO_FILE.TIPO_PDF_PARTE_II, base.Utente);
                            allegato_pdf_Parte_I.Save();
                        }
                    }
                }


                FileUpload fileASL = (FileUpload)frmViewAlunno.Controls[0].FindControl("file_ASL_104");

                if (!fileASL.FileName.Equals(string.Empty))
                {

                    using (Stream fs = file1.PostedFile.InputStream)
                    {
                        using (BinaryReader br = new BinaryReader(fs))
                        {
                            byte[] bytes = br.ReadBytes((Int32)fs.Length);

                            //This line of code is reading the bytes .    
                            BLL.Allegato allegato_pdf_Parte_I = new BLL.Allegato(ID_Allievo, fileASL.FileName, bytes, fileASL.PostedFile.ContentType, BLL.Allegato.TIPO_FILE.TIPO_Verbale_104_ASL, base.Utente);
                            allegato_pdf_Parte_I.Save();
                        }
                    }
                }
            }

            Response.Redirect(@"~/GestioneGravita/Allegati.aspx");

        }


        protected void lnkBtn_Download_File1_Click(object sender, EventArgs e)
        {
            BLL.Allegato allegato_pdf_Parte_I = new BLL.Allegato(ID_File_Parte_I);
            allegato_pdf_Parte_I.Download();

            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = allegato_pdf_Parte_I.ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + allegato_pdf_Parte_I.Nome);
            Response.BinaryWrite(allegato_pdf_Parte_I.Bytes);
            Response.Flush();
            Response.End();


        }
    }
}
            
