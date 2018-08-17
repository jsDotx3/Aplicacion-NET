<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ModificarCliente.aspx.cs" Inherits="AplicacionWeb.Formulario_web12" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container">
        <label>Escoga cliente por rut:</label>
        <asp:DropDownList ID="DropdownCliente" runat="server" CssClass="form-control"></asp:DropDownList>
    <asp:Button ID="Modificar" runat="server" Text="Modificar" cssClass="btn btn-primary" OnClick="Modificar_Click"/>
    </div>
</asp:Content>
