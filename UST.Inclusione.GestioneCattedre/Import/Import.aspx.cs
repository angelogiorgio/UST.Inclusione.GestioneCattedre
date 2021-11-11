using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre.Import
{
    public partial class Import : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkBtn_Carica_Click(object sender, EventArgs e)
        {
            this.ParseXlsFil(this.GetPathFile());

            gridViewAllievi.DataBind();


        }
        
        private string GetPathFile()
        {
            string fileName = fileUpload.FileName;
            string strFileName;
            string strFilePath = "";
            string strFolder;
            strFolder = Server.MapPath("./");
            // Retrieve the name of the file that is posted.
            strFileName = fileName;
            strFileName = Path.GetFileName(strFileName);
            if (fileUpload.FileName != "")
            {
                // Create the folder if it does not exist.
                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }
                // Save the uploaded file to the server.
                strFilePath = strFolder + strFileName;
                if (File.Exists(strFilePath))
                {
                    File.Delete(strFilePath);
                    fileUpload.PostedFile.SaveAs(strFilePath);
                    lblFileUpload.Text = strFileName + " has been successfully uploaded.";
                }
                else
                {
                    fileUpload.PostedFile.SaveAs(strFilePath);
                    lblFileUpload.Text = strFileName + " has been successfully uploaded.";
                }
            }
            else
            {
                lblFileUpload.Text = "Click 'Browse' to select the file to upload.";
            }
            // Display the result of the upload.
            //frmConfirmation.Visible = true;

            return strFilePath;
        }
        
        private List<BLL.Allievo> ParseXlsFil(string fileName)
        {
            OleDbConnection x = null;
            try
            {
                //string read = @"C:\angelo.xlsx";
                string read = fileName;

                x = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + read + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"");


                if (Path.GetExtension(read) == ".xls")
                {
                    x = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + read + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"");
                }
                else if (Path.GetExtension(read) == ".xlsx")
                {
                    x = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + read + ";Extended Properties='Excel 12.0;HDR=YES;IMEX=1;';");
                }

                string queryString = "SELECT * FROM [Importazione$]";
                using (x)
                {
                    x.Open();
                    OleDbCommand command = new OleDbCommand(queryString, x);
                    command.CommandType = CommandType.Text;

                    OleDbDataReader reader = command.ExecuteReader();
                    int rows = 0;
                    while (reader.Read())
                    {
                        rows++;
                        if (rows >= 3)
                        {
                            string Scuola_codiceMeccanografico = reader[0].ToString();

                            if (Scuola_codiceMeccanografico.Equals(string.Empty) == false)
                            {
                                int idIstituto = int.Parse(ddlIstituti.SelectedValue);
                                int idAnnoScolastico = int.Parse(ddlAnnoScolastico.SelectedValue);
                                int idPeriodo = int.Parse(ddlPeriodi.SelectedValue);
                                int idGrado = int.Parse(ddlobsGradi.SelectedValue);


                                string CodiceMeccanograficoPlesso = reader[0].ToString();
                                string IndirizzoPlesso = reader[1].ToString();
                                string Allievo_CF = reader[2].ToString();
                                string Allievo_cognome_nome = reader[3].ToString();
                                string Allievo_sesso = reader[4].ToString();

                                DateTime Allievo_dataNascita = DateTime.MinValue;
                                DateTime.TryParse(reader[5].ToString(), out Allievo_dataNascita);

                                string Allievo_luogoNascita = reader[6].ToString();
                                string Allievo_luogoDomicilio = reader[7].ToString();
                                string Allievo_cittadinanza = reader[8].ToString();

                                int Allievo_classe = int.MinValue;
                                int.TryParse(reader[9].ToString(), out Allievo_classe);


                                int Classe_NumeroAllievi = int.MinValue;
                                int.TryParse(reader[10].ToString(), out Classe_NumeroAllievi);

                                int Classe_TempoScuola = int.MinValue;
                                int.TryParse(reader[11].ToString(), out Classe_TempoScuola);

                                int Classe_OreSettimanali = int.MinValue;
                                int.TryParse(reader[12].ToString(), out Classe_OreSettimanali);


                                int Allievo_OrePsicoFisico = int.MinValue;
                                int.TryParse(reader[13].ToString(), out Allievo_OrePsicoFisico);

                                int Allievo_Audioleso = int.MinValue;
                                int.TryParse(reader[14].ToString(), out Allievo_Audioleso);

                                int Allievo_NonVedente = int.MinValue;
                                int.TryParse(reader[15].ToString(), out Allievo_NonVedente);

                                string Allievo_PrimoCodice = reader[16].ToString();
                                string Allievo_SecondoCodice = reader[17].ToString();
                                string Allievo_TerzoCodice = reader[18].ToString();

                                int Allievo_AnnoUltimaCertificazione = int.MinValue;
                                int.TryParse(reader[19].ToString(), out Allievo_AnnoUltimaCertificazione);

                                int Allievo_ASL_NumeroCetificazioni = int.MinValue;
                                int.TryParse(reader[20].ToString(), out Allievo_ASL_NumeroCetificazioni);


                                Boolean Allievo_PDF_Parte_1 = false;
                                Boolean.TryParse(reader[21].ToString(), out Allievo_PDF_Parte_1);

                                Boolean Allievo_PDF_Parte_2 = false;
                                Boolean.TryParse(reader[22].ToString(), out Allievo_PDF_Parte_2);

                                Boolean Allievo_Verbale104 = false;
                                Boolean.TryParse(reader[23].ToString(), out Allievo_Verbale104);

                                BLL.Allievo allievo = new BLL.Allievo(idAnnoScolastico, idPeriodo, idIstituto, CodiceMeccanograficoPlesso, IndirizzoPlesso, Allievo_CF, Allievo_cognome_nome, 
                                    Allievo_cognome_nome, Allievo_sesso,
                                    Allievo_dataNascita, Allievo_luogoNascita, Allievo_luogoDomicilio, Allievo_cittadinanza, Allievo_classe, Classe_NumeroAllievi,
                                    Classe_TempoScuola, Classe_OreSettimanali, Allievo_OrePsicoFisico, Allievo_Audioleso, Allievo_NonVedente, Allievo_PrimoCodice, Allievo_SecondoCodice,
                                        Allievo_TerzoCodice, Allievo_ASL_NumeroCetificazioni,  Allievo_AnnoUltimaCertificazione, Allievo_PDF_Parte_1,
                                        Allievo_PDF_Parte_2, Allievo_Verbale104, idGrado,0,0);

                                allievo.Insert();
                            }
                        }
                    }
                    // always call Close when done reading.
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                x.Close();
            }
            return null;

        }

        protected void ddlIstituti_TextChanged(object sender, EventArgs e)
        {
            gridViewAllievi.DataBind();
        }
    }
}