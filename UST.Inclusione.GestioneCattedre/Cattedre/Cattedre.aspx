<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cattedre.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Cattedre.Cattedre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="jumbotron" style="background-color:darkgrey;border:inherit">
        <h1>Cattedre</h1>
        <hr style = 'width: 100%'/> 
        <p class="btn btn-default">Gestione Cattedre Istituti.</p>
     </div>
    

    <asp:ObjectDataSource ID="obds_Istituti" runat="server" SelectMethod="GetCattedre" UpdateMethod="UpdateCattedre"
        TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto"></asp:ObjectDataSource>
       <div class="jumbobody">
        <b>Plessi</b>
    

    <asp:GridView ID="gridViewIstituti"
        DataSourceID="obds_Istituti"
        AutoGenerateColumns="False"
        EmptyDataText="Istituto è presente nel sistema."
        AllowPaging="True"
        runat="server" DataKeyNames="ID,ID_AnnoScolastico" Font-Size="Small" RowStyle-Font-Size="Small"
        Width="100%">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" Visible="true"
                InsertVisible="False" ReadOnly="True" SortExpression="ID" />
             <asp:BoundField DataField="ID_AnnoScolastico" HeaderText="ID_AnnoScolastico" Visible="true"
                InsertVisible="False" ReadOnly="True" SortExpression="ID_AnnoScolastico" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" Visible="true"
                InsertVisible="False" ReadOnly="True" SortExpression="Nome" />
            <asp:BoundField DataField="CodiceMeccanografico" HeaderText="Codice Meccanografico"
                Visible="true"
                InsertVisible="False" ReadOnly="True" SortExpression="Codice Meccanografico" />
             <asp:BoundField DataField="DatoRealeIstituto" HeaderText="Dato Reale Istituto"
                Visible="true"
                InsertVisible="False" ReadOnly="True" SortExpression="Dato Reale Istituto" />
             <asp:BoundField DataField="NumeroCattedre" HeaderText="Numero Cattedre"
                Visible="true"
                InsertVisible="False" ReadOnly="false" SortExpression="Numero Cattedre" />

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
