using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Auto;

namespace Completo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["ListaAutos"] == null)
            {
                AutoNegocio negocio = new AutoNegocio();
                Session.Add("ListaAutos", negocio.listar());
            }
            dgvAutos.DataSource = Session["ListaAutos"];
            dgvAutos.DataBind();
        }
    }
}