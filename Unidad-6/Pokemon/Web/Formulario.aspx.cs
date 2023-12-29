using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Acceso_a_Datos;
using Dominio;
using Negocio;

namespace Web
{
    public partial class Formulario : System.Web.UI.Page
    {
        ElementoNegocio negocioE = new ElementoNegocio();
        PokemonNegocio negocioP = new PokemonNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            int nuevoP = negocioP.listar().Count;
            int ultimo = -1;
            ultimo = ultimoPokemon(ultimo);
            try
            {
                tbNumero.Enabled = false;
                if(!IsPostBack)
                {
                    cargaDropDown();
                    nuevoP++;
                    tbNumero.Text = ultimo.ToString();
                }

                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : null;
                if(id != null && !IsPostBack)
                {
                    Pokemon seleccionado = (negocioP.cargarPokemon(int.Parse(id)))[0];
                    lbNuevo.Text = "Pokemon seleccionado";
                    ddlTipoDos.Enabled = true;
                    btnModal.Visible = true;
                    btnAceptar.Text = "Modificar";

                    tbNumero.Text = id;
                    tbNombre.Text = seleccionado.Nombre;
                    tbDescripcion.Text = seleccionado.Descripcion;
                    tbUrlImagen.Text = seleccionado.UrlImagen;
                    ddlTipo.SelectedValue = seleccionado.Tipo.Numero.ToString();
                    ddlDebilidad.SelectedValue = seleccionado.Debilidad.Numero.ToString();
                    cargaImg();
                    if(!seleccionado.Activo)
                    {
                        btnReactivar.Visible = true;
                    }
                    else
                    {
                        btnReactivar.Visible = false;
                    }
                }
            }
            catch (Exception error)
            {
                Session.Add("error", error);
                throw;
            }
        }
        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if(ddlTipo.SelectedIndex != 0)
                {
                    ddlTipoDos.Enabled = true;
                    ddlDebilidad.Enabled = true;
                }
                else
                {
                    ddlTipoDos.Enabled = false;
                    ddlDebilidad.Enabled = false;
                    ddlTipoDos.SelectedIndex = 0;
                }
            }
            catch (Exception error)
            {
                Session.Add("error", error);
                throw;
            }
        }
        protected void tbUrlImagen_TextChanged(object sender, EventArgs e)
        {
            try
            {
                imgPokemonNuevo.ImageUrl = tbUrlImagen.Text;
                imgPokemonNuevo.DataBind();
            }
            catch (Exception error)
            {
                Session.Add("error", error);
                throw;
            }
        }
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Pokemon nuevo = new Pokemon();

                nuevo.Numero = int.Parse(tbNumero.Text);
                nuevo.Nombre = tbNombre.Text;
                nuevo.Descripcion = tbDescripcion.Text;
                nuevo.UrlImagen = tbUrlImagen.Text;
                nuevo.Tipo = new Elemento();
                nuevo.Tipo.Numero = int.Parse(ddlTipo.SelectedValue);
                nuevo.Debilidad = new Elemento();
                nuevo.Debilidad.Numero = int.Parse(ddlDebilidad.SelectedValue);

                if(Request.QueryString["id"] != null)
                {
                    negocioP.modificar(nuevo);
                }
                else
                {
                    negocioP.agregar(nuevo);
                }
                Response.Redirect("Registro.aspx", false);
            }
            catch (Exception error)
            {
                Session.Add("error", error);
                throw;
            }
        }
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                int eliminado = int.Parse(tbNumero.Text);
                negocioP.eliminar(eliminado);
                Response.Redirect("Registro.aspx", false);
            }
            catch(Exception error)
            {
                Session.Add("error", error);
                throw error;
            }
        }
        protected void btnReactivar_Click(object sender, EventArgs e)
        {
            try
            {
                int reactivado = int.Parse(tbNumero.Text);
                negocioP.reactivar(reactivado);
                Response.Redirect("Registro.aspx", false);
            }
            catch(Exception error)
            {
                Session.Add("error", error);
                throw error;
            }
        }
        protected void cargaDropDown()
        {
            ddlTipo.DataSource = negocioE.listar();
            ddlTipo.DataValueField = "Numero";
            ddlTipo.DataTextField = "Descripcion";
            ddlTipo.DataBind();

            ddlTipoDos.DataSource = negocioE.listar();
            ddlTipoDos.DataValueField = "Numero";
            ddlTipoDos.DataTextField = "Descripcion";
            ddlTipoDos.DataBind();

            ddlDebilidad.DataSource = negocioE.listar();
            ddlDebilidad.DataValueField = "Numero";
            ddlDebilidad.DataTextField = "Descripcion";
            ddlDebilidad.DataBind();

            ddlTipo.Items.Insert(0, "");
            ddlTipoDos.Items.Insert(0, "");
            ddlDebilidad.Items.Insert(0, "");
            ddlTipo.SelectedIndex = 0;
            ddlTipoDos.SelectedIndex = 0;
            ddlDebilidad.SelectedIndex = 0;
        }
        protected void cargaImg()
        {
            imgPokemonNuevo.ImageUrl = tbUrlImagen.Text;
            imgPokemonNuevo.DataBind();
        }
        protected int ultimoPokemon(int ultimo)
        {
            List<Pokemon> listaPok = negocioP.listar();
            foreach (var item in listaPok)
            {
                ultimo++;
            }
            Pokemon lastOne = (negocioP.listar())[ultimo];
            ultimo = 1;
            ultimo += lastOne.Numero;

            return ultimo;
        }
    }
}