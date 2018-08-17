using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
namespace AplicacionWeb
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Error"] = false;
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            Boolean Estado = TxtRut.Text.Length <= 0 || TxtNombres.Text.Length <= 0 || TxtAPaterno.Text.Length <= 0 || TxtAMaterno.Text.Length <= 0 || DtpNacimiento.Text.Length <= 0 ? true : false;
            Session["Error"] = Estado;

        }

        protected void Limpiar_Click(object sender, EventArgs e)
        {
            TxtRut.Text = "";
            TxtNombres.Text = "";
            TxtAPaterno.Text = "";
            TxtAMaterno.Text = "";
            DtpNacimiento.Text = "";
            Session["Error"] = false;
        }

      
    }
}