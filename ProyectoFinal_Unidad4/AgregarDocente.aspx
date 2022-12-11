<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AgregarDocente.aspx.vb" Inherits="ProyectoFinal_Unidad4.AgregarDocente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:placeholder id="docente" runat="server" />
    <p class="text-center">
        <br />
        <span style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: large; color: #0033CC">AGREGAR DOCENTE</span></p>
   <p>
        <br />
    </p>


    <p class="text-center" style="font-size: large">
        &nbsp;</p>

    <table align="center" style="width: 60%; border: 2px solid #0066FF; background-color: #99CCFF">
        <tr>
            <td class="text-right" style="width: 114px">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;"><em><strong>Nombre</strong></em></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="txtNombre" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                Ingrese nombre de docente</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;"><em><strong>Apellido</strong></em></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="TxtApellido" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                Ingrese nombre de docente</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;"><em><strong>Correo</strong></em></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="TxtCorreo" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                Ingrese nombre de docente</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;"><em><strong>Teléfono</strong></em></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="TxtTelefono" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                Ingrese telefono de docente</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;"><em><strong>Código</strong></em></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="TxtCodigo" runat="server" Width="122px" Enabled="False"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnGenerarCodigo" runat="server" Text="Generar código" Width="126px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; font-size: large; color: #0066CC; font-family: Calibri;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
