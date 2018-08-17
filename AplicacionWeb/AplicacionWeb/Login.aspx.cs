using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Error"] = false;
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            Boolean Estado = TxtPassword.Text.Length <= 0 || TxtRut.Text.Length <= 0 ? true : false;
            Session["Error"] = Estado;
            if (!Boolean.Parse(Session["Error"].ToString()))
            {
                Session["Usuario"] = TxtRut.Text;
            }
        }
    }
}