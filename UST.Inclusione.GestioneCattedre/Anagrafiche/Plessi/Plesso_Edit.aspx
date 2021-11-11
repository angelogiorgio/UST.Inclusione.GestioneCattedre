<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Plesso_Edit.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Anagrafiche.Plessi.Plesso_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="width: 100%;">
       <div class="jumbotron">
        <h1>Plessi</h1>
        <hr style = 'width: 100%'/> 
        <p class="btn btn-default">Gestione dei Plessi.</p>
     </div>

                  <asp:ObjectDataSource ID="odsIstituti" runat="server" SelectMethod="GetAll"
                                TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto" />
                  
        <asp:ObjectDataSource ID="obsPlesso" runat="server" TypeName="UST.Inclusione.GestioneCattedre.BLL.Plesso"
            InsertMethod="Insert" SelectMethod="Get" UpdateMethod="Update" DeleteMethod="Delete" />

        <asp:FormView ID="frmView" DefaultMode="Insert" runat="server" DataSourceID="obsPlesso"
            Width="100%" AutoPostBack="true" OnItemInserted="frmView_ItemInserted" 
            OnItemUpdated="frmView_ItemUpdated" OnItemCommand="frmView_ItemCommand" 
            OnItemDeleted="frmView_ItemDeleted">
            <InsertItemTemplate>
                <script type="text/javascript">

                    function disable() {
                        ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_1").ClientID%>'), false);
                        ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_2").ClientID%>'), false);
                        ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_3").ClientID%>'), false);
                        ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_4").ClientID%>'), false);
                        ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_5").ClientID%>'), false);
                        ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_6").ClientID%>'), false);
                    }

            </script>
                <table style="width: 100%; border-spacing: 10px;">
                     <tr>
                        <td><b>Grado</b></td>
                        <td>
                            <asp:ObjectDataSource ID="obsGradi" runat="server" SelectMethod="GetAll"
                                TypeName="UST.Inclusione.GestioneCattedre.BLL.Grado" />
                            <asp:DropDownList ID="ddlobsGradi" runat="server" DataSourceID="obsGradi"
                                DataValueField="ID" SelectedValue='<%# Bind("idGrado") %>'
                                DataTextField="Descrizione">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_1" runat="server" ControlToValidate="ddlobsGradi"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td><b>Istituto</b></td>
                        <td>
                            <asp:DropDownList ID="ddlIstituto" runat="server" DataSourceID="odsIstituti"
                                DataValueField="ID" SelectedValue='<%# Bind("idIstituto") %>'
                                DataTextField="Nome">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_2" runat="server" ControlToValidate="ddlIstituto"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Descrizione</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtDescrizione" Text='<%# Bind("descrizione") %>'
                                ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_3" runat="server" ControlToValidate="txtDescrizione"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Indirizzo</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtIndirizzo" Text='<%# Bind("indirizzo") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_4" runat="server" ControlToValidate="txtIndirizzo"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Città</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCitta" Text='<%# Bind("città") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_5" runat="server" ControlToValidate="txtCitta"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Codice Meccanografico</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCodiceMeccanografico" Text='<%# Bind("codiceMeccanografico") %>'
                                ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_6" runat="server" ControlToValidate="txtCodiceMeccanografico"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Anno Scolastico</b></td>
                        <td>
                            <asp:ObjectDataSource ID="obsAnnoScolastico" runat="server" SelectMethod="GetAll"
                                TypeName="UST.Inclusione.GestioneCattedre.BLL.AnnoScolastico" />
                            <asp:DropDownList ID="ddlAnnoScolastico" runat="server" DataSourceID="obsAnnoScolastico" 
                                DataValueField="ID" SelectedValue='<%# Bind("idAnnoScolastico") %>' DataTextField="Descrizione">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_7" runat="server" ControlToValidate="ddlAnnoScolastico"
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
                            CommandName="Cancel" OnClientClick="disable();return confirm('Vuoi annullare l\'inserimento?');"
                            runat="server" />

                        </td>

                    </tr>
                </table>

            </InsertItemTemplate>

            <EditItemTemplate>
                    <script type="text/javascript">

                        function disable() {
                            ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_8").ClientID%>'), false);
                            ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_9").ClientID%>'), false);
                            ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_10").ClientID%>'), false);
                            ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_11").ClientID%>'), false);
                            ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_12").ClientID%>'), false);
                            ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_13").ClientID%>'), false);
                            ValidatorEnable(document.getElementById('<%=frmView.Controls[0].FindControl("rfv_14").ClientID%>'), false);
                        }

            </script>
                <table style="width: 100%; border-spacing: 10px;">
                    <tr>
                        <td><b>ID</b></td>
                        <td>
                            <asp:Label runat="server" ID="lblID" Text='<%# Bind("id") %>'
                                ValidateRequestMode="Enabled"></asp:Label>
                            
                        </td>
                    </tr>
                     <tr>
                        <td><b>Grado</b></td>
                        <td>
                            <asp:ObjectDataSource ID="obsGradi" runat="server" SelectMethod="GetAll"
                                TypeName="UST.Inclusione.GestioneCattedre.BLL.Grado" />
                            <asp:DropDownList ID="ddlGradi" runat="server" DataSourceID="obsGradi"
                                DataValueField="ID" SelectedValue='<%# Bind("idGrado") %>'
                                DataTextField="Descrizione">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_8" runat="server" ControlToValidate="ddlGradi"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>

                   
                    
                    <tr>
                        <td><b>Istituto</b></td>
                        <td>
                            <asp:ObjectDataSource ID="odsIstituti" runat="server" SelectMethod="GetAll"
                                TypeName="UST.Inclusione.GestioneCattedre.BLL.Istituto" />
                            <asp:DropDownList ID="ddlIstituto" runat="server" DataSourceID="odsIstituti"
                                DataValueField="ID" SelectedValue='<%# Bind("idIstituto") %>'
                                DataTextField="Descrizione">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_9" runat="server" ControlToValidate="ddlIstituto"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Descrizione</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtDescrizione" Text='<%# Bind("descrizione") %>'
                                ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_10" runat="server" ControlToValidate="txtDescrizione"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Indirizzo</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtIndirizzo" Text='<%# Bind("indirizzo") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_11" runat="server" ControlToValidate="txtIndirizzo"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Città</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCitta" Text='<%# Bind("città") %>' ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_12" runat="server" ControlToValidate="txtCitta"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Codice Meccanografico</b></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCodiceMeccanografico" Text='<%# Bind("codiceMeccanografico") %>'
                                ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_13" runat="server" ControlToValidate="txtCodiceMeccanografico"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Anno Scolastico</b></td>
                        <td>
                            <asp:ObjectDataSource ID="obsAnnoScolastico" runat="server" SelectMethod="GetAll"
                                TypeName="UST.Inclusione.GestioneCattedre.BLL.AnnoScolastico" />
                            <asp:DropDownList ID="ddlAnnoScolastico" runat="server" DataSourceID="obsAnnoScolastico"
                                DataValueField="ID" SelectedValue='<%# Bind("idAnnoScolastico") %>' DataTextField="Descrizione">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_14" runat="server" ControlToValidate="ddlAnnoScolastico"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: right;">

                            <asp:LinkButton ID="InsertButton"
                                Text="Modifica"
                                CommandName="Update"
                                runat="server" />

                            &nbsp;

                            <asp:LinkButton ID="lnBtnDelete"
                            Text="Elimina"  
                            CommandName="Delete" OnClientClick="return confirm('Confermi cancellazione Plesso?');"
                            runat="server" />

                        &nbsp;


                        <asp:LinkButton ID="CancelInsertButton"
                            Text="Annulla"
                            CommandName="Cancel" OnClientClick="disable();return confirm('Vuoi annullare la modifica?');"
                            runat="server" />

                        </td>


                    </tr>
                </table>

            </EditItemTemplate>


        </asp:FormView>

        <asp:ObjectDataSource ID="obds_Plessi" runat="server" SelectMethod="GetAll"
            TypeName="UST.Inclusione.GestioneCattedre.BLL.Plesso"></asp:ObjectDataSource>
        <div style="width: 100%;">
            <asp:GridView ID="gridViewPlessi"
                DataSourceID="obds_Plessi"
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

                </Columns>


            </asp:GridView>

        </div>
</div>
</asp:Content>
