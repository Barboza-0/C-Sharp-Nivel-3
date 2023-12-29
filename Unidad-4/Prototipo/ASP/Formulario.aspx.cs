using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Direcciones;

namespace ASP
{
    public partial class Formulario : System.Web.UI.Page
    {
        private Direccion seleccionado = null;
        private int Id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["Id"] != null && !IsPostBack)
            {
                Id = int.Parse(Request.QueryString["Id"]);
                seleccionado = ((List<Direccion>)Session["ListaCalles"]).Find(x => x.Id == Id);
                tbCalle.Text = seleccionado.Calle;
                tbAltura.Text = seleccionado.Altura.ToString();

                tbId.Visible = false;
                btnModificar.Visible = true;
                btnEliminar.Visible = true;
                btnIngresar.Enabled = false;
            }
            else
            {
                int Id = ((List<Direccion>)Session["ListaCalles"]).Count();
                Id++;
                tbId.Text = Id.ToString();

                tbId.ReadOnly = true;
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Direccion nueva = new Direccion();
            nueva.Id = int.Parse(tbId.Text) -1;
            nueva.Calle = tbCalle.Text;
            nueva.Altura = int.Parse(tbAltura.Text);
            ((List<Direccion>)Session["ListaCalles"]).Add(nueva);

            Response.Redirect("Default.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Id = int.Parse(Request.QueryString["Id"]);
            Direccion nueva = new Direccion();
            nueva.Id = Id;
            nueva.Calle = tbCalle.Text;
            nueva.Altura = int.Parse(tbAltura.Text);
            ((List<Direccion>)Session["ListaCalles"]).RemoveAll(x => x.Id == Id);
            ((List<Direccion>)Session["ListaCalles"]).Insert(Id, nueva);

            Response.Redirect("Default.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Id = int.Parse(Request.QueryString["Id"]);
            ((List<Direccion>)Session["ListaCalles"]).RemoveAll(x => x.Id == Id);

            Response.Redirect("Default.aspx");
        }
    }
}