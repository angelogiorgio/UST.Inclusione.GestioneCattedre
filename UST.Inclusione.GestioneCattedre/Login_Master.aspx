<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login_Master.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Login_Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Login</h1>
    </div>

    <div class="row">
        <div class="col-md-6" style="background-color:white">
            <h2>Amministratori</h2>
            <p>
               L'area Anagrafiche permette ai soli amministratori in UST di gestire, in maniera autonoma, tutte le anagrafiche inerenti la gestione delle cattedre di Sostegno.
            </p>
            <p> <a class="btn btn-default" href="Login.aspx">Accedi &raquo;</a>
            </p>
        </div>
         <div class="col-md-6" style="background-color:yellow">
            <h2>Scuola</h2>
            <p>
               L'area Anagrafiche permette ai soli amministratori in UST di gestire, in maniera autonoma, tutte le anagrafiche inerenti la gestione delle cattedre di Sostegno.
            </p>
            <p> <a class="btn btn-default" href="Anagrafiche/Allievi/Allievi.aspx">Accedi &raquo;</a>
            </p>
        </div>
 </div>
</asp:Content>
