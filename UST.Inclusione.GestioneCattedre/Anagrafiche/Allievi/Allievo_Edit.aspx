<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Allievo_Edit.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Anagrafiche.Allievi.Allievo_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: lightyellow; border: inherit">
        <h1>Allievo</h1>
        <hr style='width: 100%' />
        <p class="btn btn-default">Gestione Allievo.</p>
    </div>
    <asp:ObjectDataSource ID="obsIstituti" runat="server" SelectMethod="GetAll" TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto" />

    <asp:ObjectDataSource ID="obds_Allievi" runat="server" SelectMethod="Get"
        TypeName="UST.Inclusione.GestioneCattedre.BLL.Allievo" InsertMethod="Insert" 
        UpdateMethod="Update" DeleteMethod="Delete"></asp:ObjectDataSource>

    <asp:ObjectDataSource ID="obds_Plessi" runat="server" SelectMethod="GetAll" 
        TypeName="UST.Inclusione.GestioneCattedre.BLL.Plesso"></asp:ObjectDataSource>

    <asp:FormView ID="frmViewAlunno" DefaultMode="Insert" runat="server" DataSourceID="obds_Allievi"
        Width="100%" AutoPostBack="true" OnItemUpdated="frmViewAlunno_ItemUpdated"
        OnItemDeleted="frmViewAlunno_ItemDeleted"
        OnItemInserted="frmViewAlunno_ItemInserted" 
        OnItemCommand="frmViewAlunno_ItemCommand" 
        OnItemUpdating="frmViewAlunno_ItemUpdating">
        <InsertItemTemplate>
               <script type="text/javascript">
                   function disable() {
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_1").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_2").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_3").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_4").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_5").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_6").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_7").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_8").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_9").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_10").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_11").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_12").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_13").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_14").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_15").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_16").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_17").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_18").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_19").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_20").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_21").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_22").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_23").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_24").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_25").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_26").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_27").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_28").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_11_1").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_29").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_30").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_31").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_32").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_33").ClientID%>'), false);
                       
                    


                   
                   }


                 

                </script>
            <asp:Table runat="server" Style="width: 100%; padding: 10px; border: inherit">
                <asp:TableRow>
                    <asp:TableCell Style="padding: 2px">
                        <b>Istituto</b>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlIstituti" runat="server" DataSourceID="obsIstituti" DataTextField="Nome"
                            AutoPostBack="true" OnInit="ddlIstituti_Init" OnSelectedIndexChanged="ddlIstituti_SelectedIndexChanged"
                            DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell Style="padding: 2px">
                        <b>Plesso</b>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlPlessi" runat="server" DataSourceID="obds_Plessi" DataTextField="Descrizione"
                            AutoPostBack="true"
                            DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell Style="padding: 2px">
                          <b>Anno Scolastico</b>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:ObjectDataSource ID="obsAnnoScolastico" runat="server" SelectMethod="GetAll"
                            TypeName="UST.Inclusione.GestioneCattedre.BLL.AnnoScolastico" />
                        <asp:DropDownList ID="ddlAnnoScolastico" runat="server" DataSourceID="obsAnnoScolastico"
                            SelectedValue='<%# Bind("idAnnoScolastico") %>'
                            DataTextField="Descrizione" DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell Style="padding: 2px">
                    
                        <b>Periodo
                    </b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding: 2px">
                        <asp:ObjectDataSource ID="obsPeriodi" runat="server" SelectMethod="GetAll" TypeName="UST.Inclusione.GestioneCattedre.BLL.Periodo" />
                        <asp:DropDownList ID="ddlPeriodi" runat="server" DataSourceID="obsPeriodi" DataTextField="Descrizione"
                            SelectedValue='<%# Bind("idPeriodo") %>'
                            DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell Style="padding: 2px">
                    
                        <b>Grado
                    </b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding: 2px">

                        <asp:ObjectDataSource ID="obsGradi" runat="server" SelectMethod="GetAll"
                            TypeName="UST.Inclusione.GestioneCattedre.BLL.Grado" />
                        <asp:DropDownList ID="ddlobsGradi" runat="server" DataSourceID="obsGradi"
                            DataValueField="ID"
                            DataTextField="Descrizione">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_34" runat="server" ControlToValidate="ddlobsGradi"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>CF</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtCF" Text='<%# Bind("cf") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_1" runat="server" ControlToValidate="txtCF"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Nome</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtNome" Text='<%# Bind("Nome") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_2" runat="server" ControlToValidate="txtNome"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Cognome</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtCognome" Text='<%# Bind("Cognome") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_3" runat="server" ControlToValidate="txtCognome"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Sesso</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtSesso" Text='<%# Bind("Sesso") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_4" runat="server" ControlToValidate="txtSesso"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Data di Nascita</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtDataNascita" Text='<%# Bind("DataNascita") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_5" runat="server" ControlToValidate="txtDataNascita"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Luogo di Nascita</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtLuogoNascita" Text='<%# Bind("LuogoNascita") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_6" runat="server" ControlToValidate="txtLuogoNascita"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Luogo del Domicilio</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtLuogoDomicilio" Text='<%# Bind("LuogoDomicilio") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_7" runat="server" ControlToValidate="txtLuogoDomicilio"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Cittadinanza</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtCittadinanza" Text='<%# Bind("Cittadinanza") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_8" runat="server" ControlToValidate="txtCittadinanza"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Classe</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtClasse" Text='<%# Bind("Classe") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rfv_9" ControlToValidate="txtClasse"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfv_10" runat="server" ControlToValidate="txtClasse"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Numero Allievi Classe</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtNumeroAllieviClasse" Text='<%# Bind("NumeroAllieviClasse") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_11_1" runat="server" ControlToValidate="txtNumeroAllieviClasse"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_11" ControlToValidate="txtNumeroAllieviClasse"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Tempo Scuola Classe</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtTempoScuolaClasse" Text='<%# Bind("TempoScuolaClasse") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_12" runat="server" ControlToValidate="txtTempoScuolaClasse"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_13" ControlToValidate="txtTempoScuolaClasse"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Ore Settimanali Frequenza</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreSettimanaliFrequenza_" Text='<%# Bind("OreSettimanaliFrequenza") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_14" runat="server" ControlToValidate="txtOreSettimanaliFrequenza_"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_15" ControlToValidate="txtOreSettimanaliFrequenza_"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste Psico-Fisiche</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreRichieste_PsicoFisiche" Text='<%# Bind("OreRichieste_PsicoFisiche") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_16" runat="server" ControlToValidate="txtOreRichieste_PsicoFisiche"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_17" ControlToValidate="txtOreRichieste_PsicoFisiche"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste Audiolesi</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreRichieste_Audiolesi" Text='<%# Bind("OreRichieste_Audiolesi") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_18" runat="server" ControlToValidate="txtOreRichieste_Audiolesi"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_19" ControlToValidate="txtOreRichieste_Audiolesi"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste NonVedente</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreRichieste_NonVedente" Text='<%# Bind("OreRichieste_NonVedente") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_20" runat="server" ControlToValidate="txtOreRichieste_NonVedente"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_21" ControlToValidate="txtOreRichieste_NonVedente"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Ore Settimanali Frequenza</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreSettimanaliFrequenza" Text='<%# Bind("OreSettimanaliFrequenza") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_22" runat="server" ControlToValidate="txtOreSettimanaliFrequenza"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_23" ControlToValidate="txtOreSettimanaliFrequenza"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Primo Codice</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtPrimoCodice" Text='<%# Bind("PrimoCodice") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_24" runat="server" ControlToValidate="txtPrimoCodice"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Secondo Codice</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtSecondoCodice" Text='<%# Bind("SecondoCodice") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_25" runat="server" ControlToValidate="txtSecondoCodice"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Terzo Codice</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtTerzoCodice" Text='<%# Bind("TerzoCodice") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_26" runat="server" ControlToValidate="txtTerzoCodice"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>Anno Ultima Certificazione</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                        <asp:TextBox runat="server" ID="txtAnnoUltimaCertificazione" Text='<%# Bind("AnnoUltimaCertificazione") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_27" runat="server" ControlToValidate="txtAnnoUltimaCertificazione"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_28" ControlToValidate="txtAnnoUltimaCertificazione"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>

                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>ASL Numero Certificazioni</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                        <asp:TextBox runat="server" ID="txtASL_NumeroCertificazioni" Text='<%# Bind("ASL_NumeroCertificazioni") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_29" runat="server" ControlToValidate="txtASL_NumeroCertificazioni"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_30" ControlToValidate="txtASL_NumeroCertificazioni"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>PDF Parte I</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="txtPDF_Parte_I" Text='<%# Bind("PDF_Parte_I") %>'
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="NO"></asp:ListItem>
                            <asp:ListItem Text="SI"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_31" runat="server" ControlToValidate="txtPDF_Parte_I"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>PDF Parte II</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="txtPDF_Parte_II" Text='<%# Bind("PDF_Parte_II") %>'
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="NO"></asp:ListItem>
                            <asp:ListItem Text="SI"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_32" runat="server" ControlToValidate="txtPDF_Parte_II"
                            ErrorMessage="*"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>ASL 104</b>
                    </asp:TableCell>
                    <asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="txtASL_104" Text='<%# Bind("ASL_104") %>' ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="NO"></asp:ListItem>
                            <asp:ListItem Text="SI"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_33" runat="server" ControlToValidate="txtASL_104"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell ColumnSpan="8" runat="server" HorizontalAlign="Right">
                        <asp:LinkButton ID="UpdateButton"
                            Text="Inserisci"
                            CommandName="Insert"
                            runat="server" />
                        &nbsp;
                        <asp:LinkButton ID="CancelInsertButton"
                            Text="Annulla"
                            CommandName="Cancel" OnClientClick="disable();return confirm('Vuoi annullare l\'inserimento?');"
                            runat="server" />
                        &nbsp;
                    </asp:TableCell></asp:TableRow></asp:Table></InsertItemTemplate><EditItemTemplate>
               <script type="text/javascript">
                   function disable() {
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_1").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_2").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_3").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_4").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_5").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_6").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_7").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_8").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_9").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_10").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_11").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_12").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_13").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_14").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_15").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_16").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_17").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_18").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_19").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_20").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_21").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_22").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_23").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_24").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_25").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_26").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_27").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_28").ClientID%>'), false);
                        ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_29").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_30").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_31").ClientID%>'), false);
                       ValidatorEnable(document.getElementById('<%=frmViewAlunno.Controls[0].FindControl("rfv_32").ClientID%>'), false);
                 
                   }



                </script>
            <asp:Table runat="server" Style="width: 100%; padding: 10px; border: inherit">
                <asp:TableRow>
                    <asp:TableCell Style="padding-top: 10px">
                    <b>ID</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:Label runat="server" ID="TextBox1" Text='<%# Bind("ID") %>' ValidateRequestMode="Enabled"></asp:Label>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell Style="padding: 2px">
                        <b>Istituto</b>
                    </asp:TableCell><asp:TableCell>
                        <asp:DropDownList ID="ddlIstituti" runat="server" DataSourceID="obsIstituti" DataTextField="Nome"
                            AutoPostBack="true" OnSelectedIndexChanged="ddlIstituti_SelectedIndexChanged" 
                            OnDataBound="ddlIstituti_DataBound"
                            SelectedValue='<%# Bind("idIstituto") %>'
                            
                            DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                        <b>Plesso</b>
                    </asp:TableCell><asp:TableCell>
                        <asp:DropDownList ID="ddlPlessi" runat="server" DataSourceID="obds_Plessi" DataTextField="Descrizione"
                          SelectedValue='<%# Bind("idPlesso") %>'
                            
                            AutoPostBack="true" 
                            DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                          <b>Anno Scolastico</b>
                    </asp:TableCell><asp:TableCell>
                        <asp:ObjectDataSource ID="obsAnnoScolastico" runat="server" SelectMethod="GetAll"
                            TypeName="UST.Inclusione.GestioneCattedre.BLL.AnnoScolastico" />
                        <asp:DropDownList ID="ddlAnnoScolastico" runat="server" DataSourceID="obsAnnoScolastico"
                            SelectedValue='<%# Bind("idAnnoScolastico") %>'
                            DataTextField="Descrizione" DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                    
                        <b>Periodo
                    </b>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                        <asp:ObjectDataSource ID="obsPeriodi" runat="server" SelectMethod="GetAll" TypeName="UST.Inclusione.GestioneCattedre.BLL.Periodo" />
                        <asp:DropDownList ID="ddlPeriodi" runat="server" DataSourceID="obsPeriodi" DataTextField="Descrizione"
                            SelectedValue='<%# Bind("idPeriodo") %>'
                            DataValueField="ID">
                        </asp:DropDownList>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">
                    
                        <b>Grado
                    </b>
                    </asp:TableCell><asp:TableCell Style="padding: 2px">

                        <asp:ObjectDataSource ID="obsGradi" runat="server" SelectMethod="GetAll"
                            TypeName="UST.Inclusione.GestioneCattedre.BLL.Grado" />
                        <asp:DropDownList ID="ddlobsGradi" runat="server" DataSourceID="obsGradi"
                            DataValueField="ID"
                            DataTextField="Descrizione">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_1" runat="server" ControlToValidate="ddlobsGradi"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>CF</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtCF" Text='<%# Bind("cf") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_2" runat="server" ControlToValidate="txtCF"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Nome</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtNome" Text='<%# Bind("Nome") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_3" runat="server" ControlToValidate="txtNome"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Cognome</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtCognome" Text='<%# Bind("Cognome") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_4" runat="server" ControlToValidate="txtCognome"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Sesso</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtSesso" Text='<%# Bind("Sesso") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_5" runat="server" ControlToValidate="txtSesso"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Data di Nascita</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtDataNascita" Text='<%# Bind("DataNascita") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_6" runat="server" ControlToValidate="txtDataNascita"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Luogo di Nascita</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtLuogoNascita" Text='<%# Bind("LuogoNascita") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_7" runat="server" ControlToValidate="txtLuogoNascita"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Luogo del Domicilio</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtLuogoDomicilio" Text='<%# Bind("LuogoDomicilio") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_8" runat="server" ControlToValidate="txtLuogoDomicilio"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Cittadinanza</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtCittadinanza" Text='<%# Bind("Cittadinanza") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_9" runat="server" ControlToValidate="txtCittadinanza"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Classe</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtClasse" Text='<%# Bind("Classe") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rfv_10" ControlToValidate="txtClasse"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfv_11" runat="server" ControlToValidate="txtClasse"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Numero Allievi Classe</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtNumeroAllieviClasse" Text='<%# Bind("NumeroAllievi") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_12" runat="server" ControlToValidate="txtNumeroAllieviClasse"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_13" ControlToValidate="txtNumeroAllieviClasse"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Tempo Scuola Classe</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtTempoScuolaClasse" Text='<%# Bind("TempoScuolaClasse") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_14" runat="server" ControlToValidate="txtTempoScuolaClasse"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_15" ControlToValidate="txtTempoScuolaClasse"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Ore Settimanali Frequenza</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreSettimanaliFrequenza_" Text='<%# Bind("OreSettimanaliPresenza") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_16" runat="server" ControlToValidate="txtOreSettimanaliFrequenza_"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_17" ControlToValidate="txtOreSettimanaliFrequenza_"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste Psico-Fisiche</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreRichieste_PsicoFisiche" Text='<%# Bind("OreRichieste_PiscoFisico") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_18" runat="server" ControlToValidate="txtOreRichieste_PsicoFisiche"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_19" ControlToValidate="txtOreRichieste_PsicoFisiche"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste Audiolesi</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreRichieste_Audiolesi" Text='<%# Bind("OreRichieste_Audioleso") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_20" runat="server" ControlToValidate="txtOreRichieste_Audiolesi"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_21" ControlToValidate="txtOreRichieste_Audiolesi"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Ore Richieste NonVedente</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtOreRichieste_NonVedente" Text='<%# Bind("OreRichieste_NonVedente") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_22" runat="server" ControlToValidate="txtOreRichieste_NonVedente"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_23" ControlToValidate="txtOreRichieste_NonVedente"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px">
                    <b>Primo Codice</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtPrimoCodice" Text='<%# Bind("PrimoCodice_ICD10") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_24" runat="server" ControlToValidate="txtPrimoCodice"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Secondo Codice</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtSecondoCodice" Text='<%# Bind("SecondoCodice_ICD10") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_25" runat="server" ControlToValidate="txtSecondoCodice"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>Terzo Codice</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:TextBox runat="server" ID="txtTerzoCodice" Text='<%# Bind("TerzoCodice_ICD10") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_26" runat="server" ControlToValidate="txtTerzoCodice"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>Anno Ultima Certificazione</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                        <asp:TextBox runat="server" ID="txtAnnoUltimaCertificazione" Text='<%# Bind("AnnoUltimaCertificazione") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_27" runat="server" ControlToValidate="txtAnnoUltimaCertificazione"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" ControlToValidate="txtAnnoUltimaCertificazione"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>ASL Numero Certificazioni</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                        <asp:TextBox runat="server" ID="txtASL_NumeroCertificazioni" Text='<%# Bind("NumeroCertificazioniASL") %>'
                            ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_28" runat="server" ControlToValidate="txtASL_NumeroCertificazioni"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rfv_29" ControlToValidate="txtASL_NumeroCertificazioni"
                            runat="server"
                            ErrorMessage="Inserire un numero"
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server" Style="border-spacing: 10px">
                    <asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>PDF Parte I</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="txtPDF_Parte_I" SelectedValue='<%# Bind("PDF_Parte_I") %>'
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="False"></asp:ListItem>
                            <asp:ListItem Text="True"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_30" runat="server" ControlToValidate="txtPDF_Parte_I"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px" ColumnSpan="2">
                    <b>PDF Parte II</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="txtPDF_Parte_II" SelectedValue='<%# Bind("PDF_Parte_II") %>'
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="False"></asp:ListItem>
                            <asp:ListItem Text="True"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_31" runat="server" ControlToValidate="txtPDF_Parte_II"
                            ErrorMessage="*"></asp:RequiredFieldValidator>

                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                    <b>ASL 104</b>
                    </asp:TableCell><asp:TableCell Style="padding-top: 10px">
                        <asp:DropDownList runat="server" ID="txtASL_104" SelectedValue='<%# Bind("ASL_104") %>'
                            ValidateRequestMode="Enabled">
                            <asp:ListItem Text=""></asp:ListItem>
                            <asp:ListItem Text="False"></asp:ListItem>
                            <asp:ListItem Text="True"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_32" runat="server" ControlToValidate="txtASL_104"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                    <asp:TableCell ColumnSpan="8" runat="server" HorizontalAlign="Right">
                        <asp:LinkButton ID="UpdateButton"
                            Text="Modifica"
                            CommandName="Update"
                            runat="server" />
                        &nbsp;
                         <asp:LinkButton ID="LinkButton1"
                             Text="Elimina"
                             CommandName="Delete" OnClientClick="disable();return confirm('Confermi la cancellazione dell\'allievo?');"
                             runat="server" />
                        &nbsp;
                       
                        <asp:LinkButton ID="CancelInsertButton"
                            Text="Annulla"
                            CommandName="Cancel" OnClientClick="disable();return confirm('Vuoi annullare la modifica?');"
                            runat="server" />
                        &nbsp;
                    </asp:TableCell></asp:TableRow></asp:Table></EditItemTemplate></asp:FormView></asp:Content>