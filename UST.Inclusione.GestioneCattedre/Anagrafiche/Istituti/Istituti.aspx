<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Istituti.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Anagrafiche.Istituti.Istituti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="jumbotron" style="background-color:lightyellow;border:inherit">
        <h1>Istituti</h1>
        <hr style = 'width: 100%'/> 
        <p class="btn btn-default">Gestione Istituti.</p>
     </div>
    

    <asp:ObjectDataSource ID="obds_Istituti" runat="server" SelectMethod="GetAll" UpdateMethod="Update"
        TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto"></asp:ObjectDataSource>
       <div class="jumbobody">
        <b>Plessi</b>
    

    <asp:GridView ID="gridViewIstituti"
        DataSourceID="obds_Istituti"
        AutoGenerateColumns="False"
        EmptyDataText="Istituto è presente nel sistema."
        AllowPaging="True"
        runat="server" DataKeyNames="ID" Font-Size="Small" RowStyle-Font-Size="Small"
        Width="100%" OnRowCommand="gridViewIstituti_RowCommand">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" Visible="true"
                InsertVisible="False" ReadOnly="True" SortExpression="ID" />

            <asp:BoundField DataField="Nome" HeaderText="Nome" Visible="true"
                InsertVisible="False" ReadOnly="True" SortExpression="Nome" />
            <asp:BoundField DataField="CodiceMeccanografico" HeaderText="Codice Meccanografico"
                Visible="true"
                InsertVisible="False" ReadOnly="True" SortExpression="Codice Meccanografico" />
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
