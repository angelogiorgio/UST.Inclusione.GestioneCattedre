<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Allievo_Gravita.aspx.cs" 
    Inherits="UST.Inclusione.GestioneCattedre.GestioneGravita.Allievo_Gravita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: lightyellow; border: inherit">
        <h1>Allievo</h1>
        <hr style='width: 100%' />
        <p class="btn btn-default">Gestione Gravita Allievo.</p>
    </div>
    

    <asp:ObjectDataSource ID="obds_Allievi" runat="server" SelectMethod="Get"
        TypeName="UST.Inclusione.GestioneCattedre.BLL.Allievo"  
        UpdateMethod="SetGravita" ></asp:ObjectDataSource>



    <asp:FormView ID="frmViewAlunno" DefaultMode="Edit" runat="server" DataSourceID="obds_Allievi"
        Width="100%" AutoPostBack="true" OnItemUpdated="frmViewAlunno_ItemUpdated" OnItemCommand="frmViewAlunno_ItemCommand"
       
       >
     
        <EditItemTemplate>
            <asp:Table runat="server" Style="width: 100%; padding: 10px; border: inherit">
                <asp:TableRow>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>ID</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:Label runat="server" ID="TextBox1" Text='<%# Bind("ID") %>' ValidateRequestMode="Enabled"></asp:Label>
                    </asp:TableCell>
                        <asp:TableCell Style="padding-top: 10px">
                    <b>Istituto</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:Label runat="server" ID="TextBox3" Text='<%# Bind("Istituto_Descrizione") %>'
                            ValidateRequestMode="Enabled" Enabled="false"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Plesso</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:Label runat="server" ID="Label1" Text='<%# Bind("Plesso_Descrizione") %>'
                            ValidateRequestMode="Enabled" Enabled="false"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Anno Scolastico</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:Label runat="server" ID="Label2" Text='<%# Bind("Anno_Descrizione") %>'
                            ValidateRequestMode="Enabled" Enabled="false"></asp:Label>

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
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtClasse"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
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
                        <asp:TextBox runat="server" ID="txtOreRichieste_PsicoFisiche" Text='<%# Bind("OreRichieste_PiscoFisico") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                       
                   </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste Audiolesi</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreRichieste_Audiolesi" Text='<%# Bind("OreRichieste_Audioleso") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                     
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste NonVedente</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreRichieste_NonVedente" Text='<%# Bind("OreRichieste_NonVedente") %>' Enabled="false"
                            ValidateRequestMode="Enabled"></asp:TextBox>
                      
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
                        <asp:DropDownList runat="server" ID="ddlGravita" SelectedValue='<%# Bind("Gravita") %>'
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="0"></asp:ListItem>
                            <asp:ListItem Text="1"></asp:ListItem>
                             <asp:ListItem Text="2"></asp:ListItem>
                             <asp:ListItem Text="3"></asp:ListItem>
                             <asp:ListItem Text="4"></asp:ListItem>                             
                        </asp:DropDownList>
                       
                    </asp:TableCell>
                    <asp:TableCell>
                      <b>ASL Numero Certificazioni</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                        <asp:TextBox runat="server" ID="TextBox2" Text='<%# Bind("DatoReale") %>' Enabled="false"
                            ></asp:TextBox>
                       
                    </asp:TableCell>

                      
                  
                </asp:TableRow>
               
                <asp:TableRow runat="server">
                    <asp:TableCell ColumnSpan="8" runat="server" HorizontalAlign="Right">
                        <asp:LinkButton ID="UpdateButton"
                            Text="Modifica"
                            CommandName="Update"
                            runat="server" />
                        &nbsp;
                      

                        &nbsp;
                       
                        <asp:LinkButton ID="CancelInsertButton"
                            Text="Annulla"
                            CommandName="Cancel"  OnClientClick="return confirm('Vuoi annullare la modifica?');"
                            runat="server" />
                        &nbsp;
                    </asp:TableCell></asp:TableRow></asp:Table></EditItemTemplate></asp:FormView></asp:Content>