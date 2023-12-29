using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Direcciones;

namespace ASP
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ListaCalles"] == null)
            {
                DireccionNegocio negocio = new DireccionNegocio();
                Session.Add("ListaCalles", negocio.listar());
            }
            dgvDireccion.DataSource = Session["ListaCalles"];
            dgvDireccion.DataBind();
        }

        protected void dgvDireccion_SelectedIndexChanged(object sender, EventArgs e)
        {
            var seleccion = dgvDireccion.SelectedDataKey.Value;

            Response.Redirect("Formulario.aspx?Id=" + seleccion);
        }
    }
}