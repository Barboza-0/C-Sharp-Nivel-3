using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNombre_Click(object sender, EventArgs e)
        {
            if(tbNombre.Text != "")
            {
                lbSaludo.Text = "Hola " + tbNombre.Text;
            }
        }
    }
}