<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AplicacionWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="static/css/main.css" rel="stylesheet" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tipsy/1.0.3/jquery.tipsy.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="icon" href="static/favicon.ico" type="image/x-icon"/>
    <title>Ingreso</title>
</head>
<body>
    <div class="container">
        <form runat="server">
            <%
              
                String error = Session["Error"].ToString();
                if(Boolean.Parse(error))
                {
                %>
            <div class="alert alert-danger">
<asp:RequiredFieldValidator ID="RfvRut" runat="server" ErrorMessage="Faltra Rut" ValidationGroup="Enviar" SetFocusOnError="True" ControlToValidate="TxtRut" Display="Dynamic"></asp:RequiredFieldValidator>
<br />
                <asp:RequiredFieldValidator ID="RfvPassword" runat="server" ErrorMessage="Faltra contraseña" ValidationGroup="Enviar" SetFocusOnError="True" ControlToValidate="TxtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <%
              
              
                }
                %>
  <div class="form-group">
<label>RUT:</label><asp:TextBox ID="TxtRut" runat="server" CssClass="form-control" ValidationGroup="Enviar"></asp:TextBox>
  </div>
  <div class="form-group">
    <label>Contraseña:</label>
<asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" ValidationGroup="Enviar" TextMode="Password"></asp:TextBox>
  </div>

 <asp:Button ID="Enviar" runat="server" Text="Enviar" CssClass="btn btn-primary" ValidationGroup="Enviar" OnClick="Enviar_Click" />

    </form>
   
            </div>

</body>
</html>
