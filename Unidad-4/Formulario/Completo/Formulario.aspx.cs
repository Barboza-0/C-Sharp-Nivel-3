using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Auto;

namespace Completo
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlColor.Items.Add("Blanco");
                ddlColor.Items.Add("Negro");
                ddlColor.Items.Add("Gris");
            }
        }
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Autos nuevo = new Autos();
            nuevo.Id = int.Parse(tbId.Text);
            nuevo.Modelo = (string)tbModelo.Text;
            nuevo.Marca = (string)tbMarca.Text;
            nuevo.Color = (string)ddlColor.SelectedValue;
            nuevo.Fecha = DateTime.Parse(tbFecha.Text);
            nuevo.Usado = ckbUsado.Checked;
            nuevo.Importado = ckbImportado.Checked;

            ((List<Autos>)Session["ListaAutos"]).Add(nuevo);
            Response.Redirect("Default.aspx");
        }
    }
}