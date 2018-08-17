<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CrearAutomovil.aspx.cs" Inherits="AplicacionWeb.Formulario_web15" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container">
     <%

         String error = Session["Error"].ToString();
         if(Boolean.Parse(error))
         {
                %>
<div class="alert alert-danger">
<asp:RequiredFieldValidator ID="RfvPatente" runat="server" ControlToValidate="TxtPatente" ErrorMessage="Falta patente" SetFocusOnError="True" ValidationGroup="Enviar"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RfvAnio" runat="server" ControlToValidate="TxtAnio" ErrorMessage="Falta año" SetFocusOnError="True" ValidationGroup="Enviar"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RfvCantidadPuertas" runat="server" ControlToValidate="TxtPuertas" ErrorMessage="Falta cantidad de puertas" SetFocusOnError="True" ValidationGroup="Enviar"></asp:RequiredFieldValidator>
<asp:RangeValidator ID="RvAnio" runat="server" ErrorMessage="Rango invalido de año" MaximumValue="2017" MinimumValue="1990" Type="Integer" SetFocusOnError="True" ValidationGroup="Enviar" Display="Dynamic" ControlToValidate="TxtAnio"></asp:RangeValidator>
<asp:RangeValidator ID="RvPuertas" runat="server" ErrorMessage="Rango invalido de puertas" MaximumValue="6" MinimumValue="1" Type="Integer" SetFocusOnError="True" ValidationGroup="Enviar" Display="Dynamic" ControlToValidate="TxtPuertas"></asp:RangeValidator>
<asp:RegularExpressionValidator ID="RePatente" runat="server" ControlToValidate="TxtPatente" Display="Dynamic" ErrorMessage="Formato de patente no valida" SetFocusOnError="True"  ValidationExpression="[a-zA-Z]{2}([a-zA-Z]{2}|[0-9]{2})[0-9]{2}" ValidationGroup="Enviar"></asp:RegularExpressionValidator>
</div>
        
                <%
         
                }
                %>
  
  <div class="form-group">
    <label>Patente:</label>
&nbsp;<asp:TextBox ID="TxtPatente" runat="server" CssClass="form-control" ValidationGroup="Enviar"></asp:TextBox>
  </div>
   <div class="form-group">
    <label>Año:</label>
&nbsp;<asp:TextBox ID="TxtAnio" runat="server" CssClass="form-control" ValidationGroup="Enviar" TextMode="Number"></asp:TextBox>
  </div>
              <div class="form-group">
    <label>Cantidad Puertas:</label>
&nbsp;<asp:TextBox ID="TxtPuertas" runat="server" CssClass="form-control" ValidationGroup="Enviar" TextMode="Number"></asp:TextBox>
  </div>
              <div class="form-group">
    <label>Marca:</label>
<asp:DropDownList ID="DropdownMarca" runat="server" CssClass="form-control">
      </asp:DropDownList>
  </div>
              <div class="form-group">
    <label>Modelo:</label>
<asp:DropDownList ID="DropdownModelo" runat="server" CssClass="form-control">
      </asp:DropDownList>
  </div>
                      <div class="form-group">
    <label>Tipo Vehiculo:</label>
<asp:DropDownList ID="DropdownTipoVehiculo" runat="server" CssClass="form-control">
      </asp:DropDownList>
  </div>


 <asp:Button ID="Enviar" runat="server" Text="Enviar" CssClass="btn btn-primary" OnClick="Enviar_Click" ValidationGroup="Enviar" />
  <asp:Button ID="Limpiar" runat="server" Text="Limpiar" CssClass="btn btn-danger" OnClick="Limpiar_Click"/>

    </div>
</asp:Content>
