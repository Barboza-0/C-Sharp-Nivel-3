using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace URL
{
    public partial class Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Request.QueryString["nombre"] != null && Request.QueryString["nombre"] != "" ? "Hola " + Request.QueryString["nombre"].ToString() : "Ups!";
            lbUser.Text = user;
        }
    }
}