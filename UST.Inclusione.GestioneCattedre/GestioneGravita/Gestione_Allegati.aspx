<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gestione_Allegati.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.GestioneGravita.Gestione_Allegati" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: lightyellow; border: inherit">
        <h1>Allievo</h1>
        <hr style='width: 100%' />
        <p class="btn btn-default">Gestione Allegati Allievo.</p>
    </div>
    <asp:ObjectDataSource ID="obsIstituti" runat="server" SelectMethod="GetAll" TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto" />

    <asp:ObjectDataSource ID="obds_Allievi" runat="server" SelectMethod="Get"
        TypeName="UST.Inclusione.GestioneCattedre.BLL.Allievo" 
        ></asp:ObjectDataSource>

    <asp:ObjectDataSource ID="obds_Plessi" runat="server" SelectMethod="GetAll"
        TypeName="UST.Inclusione.GestioneCattedre.BLL.Plesso"></asp:ObjectDataSource>

    <asp:FormView ID="frmViewAlunno" DefaultMode="Insert" runat="server" DataSourceID="obds_Allievi"
        Width="100%" AutoPostBack="true" OnItemCommand="frmViewAlunno_ItemCommand">
     
        <EditItemTemplate>
            <asp:Table runat="server" Style="width: 100%; padding: 10px; border: inherit">
                <asp:TableRow>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>ID</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:Label runat="server" ID="lblID" Text='<%# Bind("ID") %>' ValidateRequestMode="Enabled"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Style="padding: 2px">
                        <b>Istituto</b>
                    </asp:TableCell><asp:TableCell>
                        <asp:DropDownList ID="ddlIstituti" runat="server" DataSourceID="obsIstituti" DataTextField="Nome"
                            AutoPostBack="true" OnSelectedIndexChanged="ddlIstituti_SelectedIndexChanged"
                            OnDataBound="ddlIstituti_Init" Enabled="false"
                            DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                        <b>Plesso</b>
                    </asp:TableCell><asp:TableCell>
                        <asp:DropDownList ID="ddlPlessi" runat="server" DataSourceID="obds_Plessi" DataTextField="Descrizione"
                            AutoPostBack="true" SelectedValue='<%# Bind("idPlesso") %>' Enabled="false"
                            DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                          <b>Anno Scolastico</b>
                    </asp:TableCell><asp:TableCell>
                        <asp:ObjectDataSource ID="obsAnnoScolastico" runat="server" SelectMethod="GetAll"
                            TypeName="UST.Inclusione.GestioneCattedre.BLL.AnnoScolastico" />
                        <asp:DropDownList ID="ddlAnnoScolastico" runat="server" DataSourceID="obsAnnoScolastico"
                            SelectedValue='<%# Bind("idAnnoScolastico") %>' Enabled="false"
                            DataTextField="Descrizione" DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                    
                        <b>Periodo
                    </b>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                        <asp:ObjectDataSource ID="obsPeriodi" runat="server" SelectMethod="GetAll" TypeName="UST.Inclusione.GestioneCattedre.BLL.Periodo" />
                        <asp:DropDownList ID="ddlPeriodi" runat="server" DataSourceID="obsPeriodi" DataTextField="Descrizione"
                            SelectedValue='<%# Bind("idPeriodo") %>' Enabled="false"
                            DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                    
                        <b>Grado
                    </b>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">

                        <asp:ObjectDataSource ID="obsGradi" runat="server" SelectMethod="GetAll"
                            TypeName="UST.Inclusione.GestioneCattedre.BLL.Grado" />
                        <asp:DropDownList ID="ddlobsGradi" runat="server" DataSourceID="obsGradi"
                            DataValueField="ID" Enabled="false"
                            DataTextField="Descrizione">
                        </asp:DropDownList>
                     
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>CF</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtCF" Text='<%# Bind("cf") %>' ValidateRequestMode="Enabled" Enabled="false"></asp:TextBox>
                       
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Nome</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtNome" Text='<%# Bind("Nome") %>' ValidateRequestMode="Enabled" Enabled="false"></asp:TextBox>
                       
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Cognome</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtCognome" Text='<%# Bind("Cognome") %>' ValidateRequestMode="Enabled" Enabled="false"></asp:TextBox>
                       
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Sesso</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtSesso" Text='<%# Bind("Sesso") %>' ValidateRequestMode="Enabled" Enabled="false"></asp:TextBox>
                        
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Data di Nascita</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtDataNascita" Text='<%# Bind("DataNascita") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Luogo di Nascita</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtLuogoNascita" Text='<%# Bind("LuogoNascita") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                      
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Luogo del Domicilio</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtLuogoDomicilio" Text='<%# Bind("LuogoDomicilio") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                    
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Cittadinanza</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtCittadinanza" Text='<%# Bind("Cittadinanza") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Classe</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtClasse" Text='<%# Bind("Classe") %>' ValidateRequestMode="Enabled" Enabled="false"></asp:TextBox>
                      
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Numero Allievi Classe</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtNumeroAllieviClasse" Text='<%# Bind("NumeroAllievi") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                      
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Tempo Scuola Classe</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtTempoScuolaClasse" Text='<%# Bind("TempoScuolaClasse") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                     
                      

                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Ore Settimanali Frequenza</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreSettimanaliFrequenza_" Text='<%# Bind("OreSettimanaliPresenza") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                       

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste Psico-Fisiche</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                       
                   </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste Audiolesi</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreRichieste_Audiolesi" Text='<%# Bind("OreRichieste_Audioleso") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                     
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste NonVedente</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                      
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Primo Codice</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtPrimoCodice" Text='<%# Bind("PrimoCodice_ICD10") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                     
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Secondo Codice</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtSecondoCodice" Text='<%# Bind("SecondoCodice_ICD10") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox> 
                      
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Terzo Codice</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtTerzoCodice" Text='<%# Bind("TerzoCodice_ICD10") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                      
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>Anno Ultima Certificazione</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                        <asp:TextBox runat="server" ID="txtAnnoUltimaCertificazione" Text='<%# Bind("AnnoUltimaCertificazione") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                       
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>ASL Numero Certificazioni</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                        <asp:TextBox runat="server" ID="txtASL_NumeroCertificazioni" Text='<%# Bind("NumeroCertificazioniASL") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                       
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>PDF Parte I</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="txtPDF_Parte_I" SelectedValue='<%# Bind("PDF_Parte_I") %>' Enabled="false"
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="False"></asp:ListItem>
                            <asp:ListItem Text="True"></asp:ListItem>
                        </asp:DropDownList>
                        
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>PDF Parte II</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="txtPDF_Parte_II" SelectedValue='<%# Bind("PDF_Parte_II") %>' Enabled="false"
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="False"></asp:ListItem>
                            <asp:ListItem Text="True"></asp:ListItem>
                        </asp:DropDownList>
                        

                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>ASL 104</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="txtASL_104" SelectedValue='<%# Bind("ASL_104") %>' Enabled="false"
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="False"></asp:ListItem>
                            <asp:ListItem Text="True"></asp:ListItem>
                        </asp:DropDownList>
                       
                    </asp:TableCell>
                  <asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="ddlGravita" SelectedValue='<%# Bind("Gravita") %>' Enabled="false"
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="0"></asp:ListItem>
                            <asp:ListItem Text="1"></asp:ListItem>
                             <asp:ListItem Text="2"></asp:ListItem>
                             <asp:ListItem Text="3"></asp:ListItem>
                             <asp:ListItem Text="4"></asp:ListItem>
                             <asp:ListItem Text="5"></asp:ListItem>
                        </asp:DropDownList>
                       
                    </asp:TableCell>
                  
                </asp:TableRow>

                     <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b> Allegato PDF Parte I</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:FileUpload runat="server" ID="file_PDF_Parte_I" />
                        <asp:Label ID="file_PDF_Parte_I_ID" Text='<%# Bind("NomeFile_1") %>' Visible="true" runat="server"></asp:Label>
                        <asp:Label ID="lbl_ID_PDF_Parte_I" Text='<%# Bind("ID_file_PDF_Parte_I") %>' Visible="false" runat="server"></asp:Label>

                        <asp:LinkButton ID="lnkBtn_Download_File1" runat="server" Text="download" OnClick="lnkBtn_Download_File1_Click"></asp:LinkButton>
                    </asp:TableCell>
                     </asp:TableRow>
                <asp:TableRow>
                         
                         <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>Allegato PDF Parte II</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:FileUpload runat="server" ID="file_PDF_Parte_II" />
                        <asp:Label ID="file_PDF_Parte_II_ID" Text='<%# Bind("NomeFile_2") %>' Visible="true" runat="server"></asp:Label>
                        <asp:Label ID="lbl_ID_PDF_Parte_II" Text='<%# Bind("ID_file_PDF_Parte_II") %>' Visible="false" runat="server"></asp:Label>

                        <asp:LinkButton ID="LinkButton1" runat="server" Text="download" OnClick="lnkBtn_Download_File1_Click"></asp:LinkButton>
                    </asp:TableCell>
                   
                          </asp:TableRow>

                <asp:TableRow>

                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>ASL 104</b>
                     </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:FileUpload runat="server" ID="file_ASL_104" />
                        <asp:Label ID="file_ASL_104_ID" Text='<%# Bind("NomeFile_ASL_014") %>' Visible="true" runat="server"></asp:Label>
                        <asp:Label ID="lblfile_ASL_104" Text='<%# Bind("ID_file_ASL_104") %>' Visible="false" runat="server"></asp:Label>

                        <asp:LinkButton ID="LinkButton2" runat="server" Text="download" OnClick="lnkBtn_Download_File1_Click"></asp:LinkButton>
                    </asp:TableCell>
                   
           </asp:TableRow>
               
                <asp:TableRow runat="server">
                    <asp:TableCell ColumnSpan="8" runat="server" HorizontalAlign="Right">
                        <asp:LinkButton ID="UpdateButton"
                            Text="Salva Allegati"
                            CommandName="Save"
                            runat="server" />
                        &nbsp;
                      

                        &nbsp;
                       
                        <asp:LinkButton ID="CancelInsertButton"
                            Text="Annulla"
                            CommandName="Cancel"  OnClientClick="return confirm('Vuoi annullare la modifica?');"
                            runat="server" />
                        &nbsp;
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </EditItemTemplate>
    </asp:FormView>
</asp:Content>

