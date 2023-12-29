using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Web
{
    public partial class Pokedex : System.Web.UI.Page
    {
        public List<Pokemon> listaPokemon = new List<Pokemon>();
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            listaPokemon = negocio.listar();
            if(!IsPostBack)
            {
                repeaterPokemon.DataSource = listaPokemon;
                repeaterPokemon.DataBind();
            }
        }
    }
}