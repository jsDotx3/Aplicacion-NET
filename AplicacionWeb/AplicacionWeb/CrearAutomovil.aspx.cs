using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWeb
{
    public partial class Formulario_web15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Error"] = false;
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            Boolean Estado = TxtAnio.Text.Length <= 0 || TxtPatente.Text.Length <= 0 || TxtPuertas.Text.Length <= 0 ? true : false;
            Session["Error"] = Estado;

            if(!Estado)
            LimpiarForm();
        }

        protected void Limpiar_Click(object sender, EventArgs e)
        {
            LimpiarForm();
        }

        private void LimpiarForm()
        {
            TxtPuertas.Text = "";
            TxtPatente.Text = "";
            TxtAnio.Text = "";
            DropdownModelo.SelectedIndex = 0;
            DropdownMarca.SelectedIndex = 0;
            DropdownTipoVehiculo.SelectedIndex = 0;
        }
    }
}