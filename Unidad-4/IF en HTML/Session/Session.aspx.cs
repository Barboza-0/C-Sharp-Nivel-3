using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class Session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string user = tbUser.Text;
            string pass = tbPass.Text;

            if(user != "" && pass != "")
            {
                Session.Add("User", user);
                Session.Add("Password", pass);
                Response.Redirect("Default.aspx", false);
            }
            else
            {
                tbUser.Text = "";
                tbPass.Text = "";
            }
        }
    }
}