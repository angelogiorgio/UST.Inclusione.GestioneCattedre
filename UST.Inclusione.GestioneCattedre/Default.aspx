<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>UST - Torino</h1>
        <p class="lead"> Inclusione - Gestione Cattedre </p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Leggi di più &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4" style="background-color:antiquewhite">
            <h2>Anagrafiche</h2>
            <p>
               L'area Anagrafiche permette ai soli amministratori in UST di gestire, in maniera autonoma, tutte le anagrafiche inerenti la gestione delle cattedre di Sostegno.
            </p>
            <p> <a class="btn btn-default" href="Anagrafiche/Allievi/Allievi.aspx">Accedi &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Import</h2>
            <p>
               Questa funzionalità permette il caricamento online dei dati su files excel provenienti dalle scuole.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div >
        <div class="col-md-4" style="background-color:aqua">
            <h2>Contatti</h2>
            <p>
                In questa sezione sono presenti i riferimenti di supporto alle scuole. 
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
