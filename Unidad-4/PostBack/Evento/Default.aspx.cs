using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evento
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnHuh_Click(object sender, EventArgs e)
        {
            lbImg.Text = "Hola " + tbImg.Text;
        }

        protected void tbImg_TextChanged(object sender, EventArgs e)
        {
            lbImg.Text = tbImg.Text;
        }
    }
}