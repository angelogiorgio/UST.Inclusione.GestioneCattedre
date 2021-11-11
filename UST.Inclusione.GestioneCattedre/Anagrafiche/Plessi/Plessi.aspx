<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Plessi.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Anagrafiche.Plessi.Plessi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Plessi</h1>
        <hr style = 'width: 100%'/> 
        <p class="btn btn-default">Gestione dei Plessi.</p>
     </div>
     <div class="jumbobody">
         <hr style = 'width: 50%'/> 

     <table style="width: 100%; border-spacing: 10px; border-width:1px">
        <tr>
            <td><b>Istituto</b></td>
            <td  style="align-content:center;">
                <asp:ObjectDataSource ID="odsIstituti" runat="server" SelectMethod="GetAll"
                    TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto" />
                <asp:DropDownList ID="ddlIstituto" runat="server" DataSourceID="odsIstituti" AutoPostBack="true"
                    DataValueField="ID" 
                    DataTextField="Descrizione_Completa" 
                    OnSelectedIndexChanged="ddlIstituto_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlIstituto"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
         <hr style = 'width: 50%'/> 
           
        </div>
   
    <asp:ObjectDataSource ID="obds_Plessi" runat="server" SelectMethod="GetAll" 
        TypeName="UST.Inclusione.GestioneCattedre.BLL.Plesso"></asp:ObjectDataSource>
    <div class="jumbobody">
        <b>Plessi</b>
        <asp:GridView ID="gridViewPlessi"
            DataSourceID="obds_Plessi"
            AutoGenerateColumns="False"
            EmptyDataText="Istituto è presente nel sistema."
            AllowPaging="True"
            runat="server" DataKeyNames="ID" Font-Size="Small" RowStyle-Font-Size="Small"
            Width="100%" OnRowCommand="gridViewPlessi_RowCommand1" >
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" Visible="true"
                    InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Descrizione" HeaderText="Descrizione" Visible="true"
                    InsertVisible="False" ReadOnly="True" SortExpression="Descrizione" />
                <asp:BoundField DataField="CodiceMeccanografico" HeaderText="Codice Meccanografico"
                    Visible="true"
                    InsertVisible="False" ReadOnly="True" SortExpression="Codice Meccanografico" />
                <asp:BoundField DataField="Indirizzo" HeaderText="Indirizzo"
                    Visible="true"
                    InsertVisible="False" ReadOnly="True" SortExpression="Indirizzo" />
                <asp:BoundField DataField="Città" HeaderText="Città"
                    Visible="true"
                    InsertVisible="False" ReadOnly="True" SortExpression="Città" />

                <asp:BoundField DataField="CodiceMeccanograficoIstituto" HeaderText="Codice Meccanografico Istituto"
                    Visible="true"
                    InsertVisible="False" ReadOnly="True" SortExpression="Codice Meccanografico Istituto" />

                <asp:BoundField DataField="AnnoScolastico_Descrizione" HeaderText="Anno Scolastico"
                    Visible="true"
                    InsertVisible="False" ReadOnly="True" SortExpression="Anno Scolastico" />

                   <asp:BoundField DataField="Grado_Descrizione" HeaderText="Grado"
                    Visible="true"
                    InsertVisible="False" ReadOnly="True" SortExpression="Grado_Descrizione" />
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
