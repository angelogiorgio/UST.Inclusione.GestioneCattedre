<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Allievi.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Anagrafiche.Allievi.Allievi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background-color: lightgreen; border: inherit">
        <h1>Allievi</h1>
        <hr style='width: 100%' />
        <p class="btn btn-default">Gestione Allievi.</p>
    </div>
    <div style="width: 100%;">
        <table style="padding: 25px; vertical-align: middle; width: 100%; margin-top: unset;
            font-family: 'Open Sans', 'Helvetica', 'Arial';">
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
                <asp:ObjectDataSource ID="obsIstituti" runat="server" SelectMethod="GetAll" 
                    TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto" />

                <td>
                    <asp:DropDownList ID="ddlIstituti" runat="server" DataSourceID="obsIstituti" DataTextField="Nome"
                        AutoPostBack="true"
                        DataValueField="ID" OnTextChanged="ddlIstituti_TextChanged" 
                        OnSelectedIndexChanged="ddlIstituti_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ObjectDataSource ID="obsAnnoScolastico" runat="server" SelectMethod="GetAll"
                        TypeName="UST.Inclusione.GestioneCattedre.BLL.AnnoScolastico" />
                    <asp:DropDownList ID="ddlAnnoScolastico" runat="server" DataSourceID="obsAnnoScolastico"
                        DataTextField="Descrizione" DataValueField="ID" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlAnnoScolastico_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ObjectDataSource ID="obsPeriodi" runat="server" SelectMethod="GetAll" TypeName="UST.Inclusione.GestioneCattedre.BLL.Periodo" />
                    <asp:DropDownList ID="ddlPeriodi" runat="server" DataSourceID="obsPeriodi" DataTextField="Descrizione"
                        DataValueField="ID" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlPeriodi_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ObjectDataSource ID="obsGradi" runat="server" SelectMethod="GetAll"
                        TypeName="UST.Inclusione.GestioneCattedre.BLL.Grado" />
                    <asp:DropDownList ID="ddlobsGradi" runat="server" DataSourceID="obsGradi"
                        DataValueField="ID" AutoPostBack="true"
                        DataTextField="Descrizione" 
                        OnSelectedIndexChanged="ddlobsGradi_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlobsGradi"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
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
        </div>

        <div class="jumbobody">

        <asp:GridView ID="gridViewAllievi"
            DataSourceID="obds_Allievi"
            AutoGenerateColumns="False"
            EmptyDataText="Nessun Allievo caricato per l'Istituto - Anno e Periodo selezionato."
            AllowPaging="True"
            runat="server" DataKeyNames="ID" Font-Size="Small" RowStyle-Font-Size="Small"
            Width="100%" OnRowCommand="gridViewAllievi_RowCommand">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" Visible="true"
                    InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="CF" HeaderText="CF"
                    SortExpression="CF" />
                <asp:BoundField DataField="Cognome" HeaderText="Cognome"
                    SortExpression="Cognome" />
                <asp:BoundField DataField="Nome" HeaderText="Nome"
                    SortExpression="Nome" />
                <asp:BoundField DataField="Sesso" HeaderText="Sesso"
                    SortExpression="Sesso" />
                <asp:BoundField DataField="PDF_Parte_I" HeaderText="PDF_Parte_I"
                    SortExpression="PDF_Parte_I" />
                <asp:BoundField DataField="PDF_Parte_II" HeaderText="PDF_Parte_II"
                    SortExpression="PDF_Parte_II" />
                <asp:BoundField DataField="ASL_104" HeaderText="ASL_104"
                    SortExpression="ASL_104" />
                <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton Text="Edit" runat="server" CommandName="Edit" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton Text="Modifica" runat="server" CommandName="Update" />
                    <asp:LinkButton Text="Annulla" runat="server" CommandName="Cancel" />
                </EditItemTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:GridView>


    </div>
</asp:Content>
