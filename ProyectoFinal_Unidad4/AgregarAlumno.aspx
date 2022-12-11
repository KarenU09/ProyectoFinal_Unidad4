<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AgregarAlumno.aspx.vb" Inherits="ProyectoFinal_Unidad4.AgregarAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:placeholder id="alumno" runat="server" />

    <p class="text-center">
        <br />
        <span style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: large; color: #0033CC">AGREGAR ALUMNO</span></p>
    
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
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;"><strong>Nombre</strong></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="txtNombre" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                Ingrese nombre de estudiante</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;"><strong>Apellido</strong></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="TxtApellido" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtApellido" ErrorMessage="Ingrese apellido de estudiante"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;"><strong>Correo</strong></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="TxtCorreo" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtCorreo" ErrorMessage="Ingrese correo de estudiante"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;"><strong>Teléfono</strong></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="TxtTelefono" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtTelefono" ErrorMessage="Ingrese telefono de estudiante"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;"><strong>Código</strong></td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="TxtCodigo" runat="server" Width="122px" Enabled="False"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnGenerarCodigo" runat="server" Text="Generar código" Width="126px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; color: #0066CC; font-size: medium;">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px"><strong></strong></td>
            <td style="width: 33px"><strong></strong></td>
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
