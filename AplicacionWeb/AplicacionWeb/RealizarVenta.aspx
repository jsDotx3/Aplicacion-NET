<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RealizarVenta.aspx.cs" Inherits="AplicacionWeb.Formulario_web14"  EnableEventValidation="true"%>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
  <div class="container">
       <%
              
                String error = Session["Error"].ToString();
                if(Boolean.Parse(error))
                {
                %>
            <div class="alert alert-danger">

            </div>
                <%
              
              
                }
                %>

  
  <div class="form-group">
    <label>Comprador (RUT):</label>
    <asp:DropDownList ID="DropdownComprador" runat="server" CssClass="form-control">
          <asp:ListItem>1</asp:ListItem>
      </asp:DropDownList>

  &nbsp;</div>
  <div class="form-group">
    <label for="pwd">Automovil (Patente):</label>
<asp:DropDownList ID="DropDownAutomovil" runat="server" CssClass="form-control">
          <asp:ListItem>1</asp:ListItem>
      </asp:DropDownList>
  </div>
<asp:Button ID="BtnEnviar" runat="server" Text="Enviar"  CssClass="btn btn-default" ValidationGroup="Enviar" />

  </div>
</asp:Content>
