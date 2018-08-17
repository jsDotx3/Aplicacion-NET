﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CrearCliente.aspx.cs" Inherits="AplicacionWeb.Formulario_web11" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container">
     <%

         String error = Session["Error"].ToString();
         if(Boolean.Parse(error))
         {
                %>
<div class="alert alert-danger">
 <asp:RequiredFieldValidator ID="RfvRut" runat="server" ControlToValidate="TxtRut" ErrorMessage="Falta rut" SetFocusOnError="True" ValidationGroup="Enviar"></asp:RequiredFieldValidator>
 <asp:RequiredFieldValidator ID="RfvNombres" runat="server" ControlToValidate="TxtNombres" ErrorMessage="Falta Nombres" SetFocusOnError="True" ValidationGroup="Enviar"></asp:RequiredFieldValidator>
 <asp:RequiredFieldValidator ID="RfvApellidoP" runat="server" ControlToValidate="TxtAPaterno" ErrorMessage="Falta Apellido Paterno" SetFocusOnError="True" ValidationGroup="Enviar"></asp:RequiredFieldValidator>
 <asp:RequiredFieldValidator ID="RfvApellidoM" runat="server" ControlToValidate="TxtAMaterno" ErrorMessage="Falta Apellido Materno" SetFocusOnError="True" ValidationGroup="Enviar"></asp:RequiredFieldValidator>
 <asp:RequiredFieldValidator ID="RfvNacimiento" runat="server" ControlToValidate="DtpNacimiento" ErrorMessage="Falta fecha nacimiento" SetFocusOnError="True" ValidationGroup="Enviar"></asp:RequiredFieldValidator>
 <asp:CustomValidator ID="CvRut" runat="server" ErrorMessage="Rut inválido" ControlToValidate="TxtRut" SetFocusOnError="True" ValidationGroup="Enviar" ClientValidationFunction="validar_rut" Visible="True" EnableClientScript="True"></asp:CustomValidator>
</div>
        
                <%
         
                }
                %>
  
  <div class="form-group">
    <label>Rut:</label>
&nbsp;<asp:TextBox ID="TxtRut" runat="server" CssClass="form-control" ValidationGroup="Enviar"></asp:TextBox>
  </div>
   <div class="form-group">
    <label>Nombres:</label>
&nbsp;<asp:TextBox ID="TxtNombres" runat="server" CssClass="form-control" ValidationGroup="Enviar"></asp:TextBox>
  </div>
              <div class="form-group">
    <label>Apellido paterno:</label>
&nbsp;<asp:TextBox ID="TxtAPaterno" runat="server" CssClass="form-control" ValidationGroup="Enviar"></asp:TextBox>
  </div>
              <div class="form-group">
    <label>Apellido materno:</label>
&nbsp;<asp:TextBox ID="TxtAMaterno" runat="server" CssClass="form-control" ValidationGroup="Enviar"></asp:TextBox>
  </div>
              <div class="form-group">
    <label>Fecha nacimiento:</label>
&nbsp;<asp:TextBox ID="DtpNacimiento" runat="server" CssClass="form-control" ValidationGroup="Enviar" TextMode="DateTime"></asp:TextBox>
  </div>

 <asp:Button ID="Enviar" runat="server" Text="Enviar" CssClass="btn btn-primary" OnClick="Enviar_Click" ValidationGroup="Enviar" />
  <asp:Button ID="Limpiar" runat="server" Text="Limpiar" CssClass="btn btn-danger" OnClick="Limpiar_Click"/>

    </div>
</asp:Content>
