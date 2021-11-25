<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Istituto_Edit.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Anagrafiche.Istituti.Istituto_New" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="width: 100%;">
        <div class="jumbotron" style="background-color: lightyellow; border: inherit">
            <h1>Istituti</h1>
            <hr style='width: 100%' />
            <p class="btn btn-default">Gestione Istituto.</p>
        </div>

        <asp:ObjectDataSource ID="obsIstituto" runat="server" TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto"
            InsertMethod="Insert" SelectMethod="Get" UpdateMethod="Update" DeleteMethod="Delete" />

        <asp:ObjectDataSource ID="obsPlesso" runat="server" TypeName="UST.Inclusione.GestioneCattedre.BLL.Plesso"
            InsertMethod="Insert" SelectMethod="Get" UpdateMethod="Update" DeleteMethod="Delete" />

        <asp:FormView ID="frm_Edit_Istiuto" DefaultMode="Insert" runat="server" DataSourceID="obsIstituto"
            Width="100%" AutoPostBack="true"
            OnItemInserted="frmViewInsert_ItemInserted"
            OnItemUpdated="frmViewInsert_ItemUpdated"
            OnItemCommand="frmViewInsert_ItemCommand">

            <EditItemTemplate>
                <script type="text/javascript">
                    function disableEdit() {
                        ValidatorEnable(document.getElementById('<%=frm_Edit_Istiuto.Controls[0].FindControl("rfv_1").ClientID%>'), false);
                         ValidatorEnable(document.getElementById('<%=frm_Edit_Istiuto.Controls[0].FindControl("rfv_2").ClientID%>'), false);
                         ValidatorEnable(document.getElementById('<%=frm_Edit_Istiuto.Controls[0].FindControl("rfv_3").ClientID%>'), false);
                    }

                </script>
                <table style="width: 100%; border-spacing: 10px;">
                    <tr>
                        <td><b>ID</b></td>
                        <td>
                           
                            <asp:Label runat="server" ID="TextBox1" Text='<%# Bind("id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Nome Istituto</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtNome" Text='<%# Bind("descrizione") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_1" runat="server" ControlToValidate="txtNome"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Codice Meccanografico</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCodiceMeccanografico" Text='<%# Bind("codiceMeccanografico") %>'
                                ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_2" runat="server" ControlToValidate="txtCodiceMeccanografico"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Anno Scolastico</b></td>
                        <td>
                            <asp:ObjectDataSource ID="obsAnnoScolastico" runat="server" SelectMethod="GetAll"
                                TypeName="UST.Inclusione.GestioneCattedre.BLL.AnnoScolastico" />
                            <asp:DropDownList ID="ddlAnnoScolastico" runat="server" DataSourceID="obsAnnoScolastico"
                                DataValueField="ID"
                                DataTextField="Descrizione" SelectedValue='<%# Eval("ID_AnnoScolastico") %>'>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_3" runat="server" ControlToValidate="ddlAnnoScolastico"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <tr>
                    <td colspan="2" style="text-align: right;">

                        <asp:LinkButton ID="UpdateButton"
                            Text="Modifica"
                            CommandName="Update"
                            runat="server" />

                        &nbsp;
                          <asp:LinkButton ID="lnBtnDelete"
                              Text="Elimina"
                              CommandName="Delete" OnClientClick="return confirm('Confermi l\'emiminazione dell\'Istituto?');"
                              runat="server" />

                        &nbsp;
                        <asp:LinkButton ID="CancelInsertButton"
                            Text="Annulla" OnClientClick="disableEdit();return confirm('Vuoi annullare la modifica?');"
                            CommandName="Cancel"
                            runat="server" />



                    </td>

                </tr>
                <div style="width: 100%;">
                    <asp:GridView ID="gridViewPlessi"
                        DataSourceID="obsPlesso"
                        AutoGenerateColumns="False"
                        EmptyDataText="Istituto è presente nel sistema."
                        AllowPaging="True"
                        runat="server" DataKeyNames="ID" Font-Size="Small" RowStyle-Font-Size="Small"
                        Width="100%">
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
            </EditItemTemplate>
            <InsertItemTemplate>
                 <script type="text/javascript">
                     function disableInsert() {
                         ValidatorEnable(document.getElementById('<%=frm_Edit_Istiuto.Controls[0].FindControl("rfv_4").ClientID%>'), false);
                        ValidatorEnable(document.getElementById('<%=frm_Edit_Istiuto.Controls[0].FindControl("rfv_5").ClientID%>'), false);
                        ValidatorEnable(document.getElementById('<%=frm_Edit_Istiuto.Controls[0].FindControl("rfv_6").ClientID%>'), false);
                     }

                </script>
                <table style="width: 100%; border-spacing: 10px;">
                    <tr>
                        <td><b>Nome Istituto</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtNome" Text='<%# Bind("nome") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_4" runat="server" ControlToValidate="txtNome"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Codice Meccanografico</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCodiceMeccanografico" Text='<%# Bind("codiceMeccanografico") %>'
                                ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_5" runat="server" ControlToValidate="txtCodiceMeccanografico"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Anno Scolastico</b></td>
                        <td>
                            <asp:ObjectDataSource ID="obsAnnoScolastico" runat="server" SelectMethod="GetAll"
                                TypeName="UST.Inclusione.GestioneCattedre.BLL.AnnoScolastico" />
                            <asp:DropDownList ID="ddlAnnoScolastico" runat="server" DataSourceID="obsAnnoScolastico"
                                DataValueField="ID"
                                DataTextField="Descrizione">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_6" runat="server" ControlToValidate="ddlAnnoScolastico"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: right;">

                            <asp:LinkButton ID="InsertButton"
                                Text="Inserisci"
                                CommandName="Insert"
                                runat="server" />

                            &nbsp;

                        <asp:LinkButton ID="CancelInsertButton"
                            Text="Annulla"
                            CommandName="Cancel" OnClientClick="disableInsert();return confirm('Vuoi annullare l \'inserimento?');"
                            runat="server" />

                        </td>

                    </tr>

                </table>
                <div style="width: 100%;">
                    <asp:ObjectDataSource ID="obds_Istituti" runat="server" SelectMethod="GetAll"
                        TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto"></asp:ObjectDataSource>
                    <asp:GridView ID="gridViewIstituti"
                        DataSourceID="obds_Istituti"
                        AutoGenerateColumns="False"
                        EmptyDataText="Istituto è presente nel sistema."
                        AllowPaging="True"
                        runat="server" DataKeyNames="ID" Font-Size="Small" RowStyle-Font-Size="Small"
                        Width="100%" AllowSorting="true">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" Visible="true"
                                InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" Visible="true"
                                InsertVisible="False" ReadOnly="True" SortExpression="Nome" />
                            <asp:BoundField DataField="CodiceMeccanografico" HeaderText="Codice Meccanografico"
                                Visible="true"
                                InsertVisible="False" ReadOnly="True" SortExpression="Codice Meccanografico" />
                            <asp:BoundField DataField="AnnoScolastico_Descrizione" HeaderText="Anno Scolastico"
                                Visible="true"
                                InsertVisible="False" ReadOnly="True" SortExpression="Anno Scolastico" />
                        </Columns>
                    </asp:GridView>
                </div>
            </InsertItemTemplate>

        </asp:FormView>
    </div>
</asp:Content>
