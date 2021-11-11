<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Import.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Import.Import" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="jumbotron" style="background-color:lavender; border: inherit">
        <h1>Import</h1>
        <hr style='width: 100%' />
        <p class="btn btn-default">Caricamento File Allievi Istituto</p>
    </div>
    <div style="width: 100%; background-color: azure">
       <table style="width: 100%; border-spacing: 10px;">
            <tr>
                <td>Istituto
                </td>
                <td>Anno Scolastico
                </td>
                <td>Periodo
                </td>               
                <td>Grado
                </td>
            </tr>
            <tr>
                <asp:ObjectDataSource ID="obsIstituti" runat="server" SelectMethod="GetAll" TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto" />

                <td>
                    <asp:DropDownList ID="ddlIstituti" runat="server" DataSourceID="obsIstituti" DataTextField="Nome"
                        AutoPostBack="true"
                        DataValueField="ID" OnTextChanged="ddlIstituti_TextChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ObjectDataSource ID="obsAnnoScolastico" runat="server" SelectMethod="GetAll"
                        TypeName="UST.Inclusione.GestioneCattedre.BLL.AnnoScolastico" />
                    <asp:DropDownList ID="ddlAnnoScolastico" runat="server" DataSourceID="obsAnnoScolastico"
                        DataTextField="Descrizione" DataValueField="ID">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ObjectDataSource ID="obsPeriodi" runat="server" SelectMethod="GetAll" TypeName="UST.Inclusione.GestioneCattedre.BLL.Periodo" />
                    <asp:DropDownList ID="ddlPeriodi" runat="server" DataSourceID="obsPeriodi" DataTextField="Descrizione"
                        DataValueField="ID">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ObjectDataSource ID="obsGradi" runat="server" SelectMethod="GetAll"
                        TypeName="UST.Inclusione.GestioneCattedre.BLL.Grado" />
                    <asp:DropDownList ID="ddlobsGradi" runat="server" DataSourceID="obsGradi"
                        DataValueField="ID"
                        DataTextField="Descrizione">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlobsGradi"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>

            </tr>


            <tr>
                <td colspan="3">

                    <asp:FileUpload ID="fileUpload" runat="server" />
                </td>

                <td>
                    <asp:LinkButton ID="lnkBtn_Carica" runat="server" OnClick="lnkBtn_Carica_Click">Carica</asp:LinkButton>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFileUpload" runat="server" Text=""></asp:Label>
                </td>
            </tr>

        </table>
    </div>
    <div style="height: 100%; width: 100%; overflow: auto;">
        <asp:ObjectDataSource ID="obds_Allievi" runat="server" SelectMethod="GetAllievi_Istituto_Periodo"
            TypeName="UST.Inclusione.GestioneCattedre.BLL.Allievo">
            <SelectParameters>
                <asp:ControlParameter Name="idAnnoScolastico"
                    ControlID="ddlAnnoScolastico"
                    PropertyName="SelectedValue" />
                <asp:ControlParameter Name="idIstituto"
                    ControlID="ddlIstituti"
                    PropertyName="SelectedValue" />
                <asp:ControlParameter Name="idPeriodo"
                    ControlID="ddlPeriodi"
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:ObjectDataSource>



        <asp:GridView ID="gridViewAllievi"
            DataSourceID="obds_Allievi"
            AutoGenerateColumns="False"
            EmptyDataText="Nessun Allievo caricato per l'Istituto - Anno e Periodo selezionato."
            AllowPaging="True"
            runat="server" DataKeyNames="ID" Font-Size="Small" RowStyle-Font-Size="Small"
            Width="50%">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" Visible="false"
                    InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="CF" HeaderText="CF"
                    SortExpression="CF" />
                <asp:BoundField DataField="Cognome" HeaderText="Cognome"
                    SortExpression="Cognome" />
                <asp:BoundField DataField="Nome" HeaderText="Nome"
                    SortExpression="Nome" />
                <asp:BoundField DataField="Sesso" HeaderText="Sesso"
                    SortExpression="Sesso" />
                <asp:BoundField DataField="DataNascita" HeaderText="DataNascita"
                    SortExpression="DataNascita" />
                <asp:BoundField DataField="LuogoNascita" HeaderText="LuogoNascita"
                    SortExpression="LuogoNascita" />
                <asp:BoundField DataField="LuogoDomicilio" HeaderText="LuogoDomicilio"
                    SortExpression="LuogoDomicilio" />
                <asp:BoundField DataField="Cittadinanza" HeaderText="Cittadinanza"
                    SortExpression="Cittadinanza" />
                <asp:BoundField DataField="Classe" HeaderText="Classe"
                    SortExpression="Classe" />
                <asp:BoundField DataField="NumeroAllievi" HeaderText="NumeroAllievi"
                    SortExpression="NumeroAllievi" />
                <asp:BoundField DataField="TempoScuolaClasse" HeaderText="TempoScuolaClasse"
                    SortExpression="TempoScuolaClasse" />
                <asp:BoundField DataField="TempoScuolaAllievo" HeaderText="TempoScuolaAllievo"
                    SortExpression="TempoScuolaAllievo" />
                <asp:BoundField DataField="OreRichieste_PiscoFisico" HeaderText="OreRichieste_PiscoFisico"
                    SortExpression="OreRichieste_PiscoFisico" />
                <asp:BoundField DataField="OreRichieste_NonVedente" HeaderText="OreRichieste_NonVedente"
                    SortExpression="OreRichieste_NonVedente" />
                <asp:BoundField DataField="OreRichieste_Audioleso" HeaderText="OreRichieste_Audioleso"
                    SortExpression="OreRichieste_Audioleso" />
                <asp:BoundField DataField="AnnoUltimaCertificazione" HeaderText="AnnoUltimaCertificazione"
                    SortExpression="AnnoUltimaCertificazione" />
                <asp:BoundField DataField="NumeroCertificazioniASL" HeaderText="NumeroCertificazioniASL"
                    SortExpression="NumeroCertificazioniASL" />
                <asp:BoundField DataField="PDF_Parte_I" HeaderText="PDF_Parte_I"
                    SortExpression="PDF_Parte_I" />
                <asp:BoundField DataField="PDF_Parte_II" HeaderText="PDF_Parte_II"
                    SortExpression="PDF_Parte_II" />
                <asp:BoundField DataField="ASL_104" HeaderText="ASL_104"
                    SortExpression="ASL_104" />

            </Columns>
        </asp:GridView>


    </div>
</asp:Content>
