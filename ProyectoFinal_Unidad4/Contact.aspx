<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="ProyectoFinal_Unidad4.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>Contactanos.</p>

    <address>
        Nuestras formas de contacto<br />
        El Salvador, San Miguel 320 ave. sur<br />
        <abbr title="Phone">Tel:</abbr>
        2661.1424
    </address>

    <address>
        <strong>Support:</strong><a href="mailto:Soporte@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong><a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
