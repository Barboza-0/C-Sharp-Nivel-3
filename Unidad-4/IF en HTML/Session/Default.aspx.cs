using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class Default : System.Web.UI.Page
    {
        public string user { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Session["User"] != null ? Session["User"].ToString() : "";
            lbUser.Text = "Hola de nuevo " + user;
        }
    }
}