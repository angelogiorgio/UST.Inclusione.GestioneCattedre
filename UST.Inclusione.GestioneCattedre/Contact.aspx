<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="UST.Inclusione.GestioneCattedre.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron" style="background-color: lightyellow; border: inherit">

        <h2><%: Title %>.</h2>
        <address>
            AT - Torino<br />
            Via Coazze, 18 - Torino.
            <br />
            <abbr title="Phone">Tel:</abbr>
            011.440.43.11
            <br />
            <a href="http://www.istruzionepiemonte.it/torino/">http://www.istruzionepiemonte.it/torino/</a>
        </address>
        <address>
            <strong>Supporto:</strong>   <a href="mailto:usp.to@istruzione.it ">usp.to@istruzione.it</a><br />
        </address>
    </div>
</asp:Content>
