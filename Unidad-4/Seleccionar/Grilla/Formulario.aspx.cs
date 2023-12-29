using Autos;
using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grilla
{
    public partial class Formulario : System.Web.UI.Page
    {
        private Auto Seleccionado = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlColor.Items.Add("Blanco");
                ddlColor.Items.Add("Gris");
                ddlColor.Items.Add("Negro");
            }

            if (Request.QueryString["Id"] != null)
            {

                int ID = int.Parse(Request.QueryString["Id"].ToString());
                Seleccionado = ((List<Auto>)Session["ListaAutos"]).Find(x => x.Id == ID);
                tbId.Text = Seleccionado.Id.ToString();
                tbModelo.Text = Seleccionado.Modelo;
                tbMarca.Text = Seleccionado.Marca;
                ddlColor.Text = Seleccionado.Color;
                tbFecha.Text = Seleccionado.Fecha.ToString("yyyy-MM-dd");
                ckbUsado.Checked = Seleccionado.Usado;
                ckbImportado.Checked = Seleccionado.Importado;

                tbId.ReadOnly = true;
                btnIngresar.Visible = false;
                btnModificar.Visible = true;
                btnEliminar.Visible = true;
            }
        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Auto nuevo = new Auto();

            nuevo.Id = int.Parse(tbId.Text);
            nuevo.Modelo = tbModelo.Text;
            nuevo.Marca = tbMarca.Text;
            nuevo.Color = ddlColor.Text;
            nuevo.Fecha = DateTime.Parse(tbFecha.Text);
            nuevo.Usado = ckbUsado.Checked;
            nuevo.Importado = ckbImportado.Checked;

            ((List<Auto>)Session["ListaAutos"]).Add(nuevo);
            Response.Redirect("Default.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}