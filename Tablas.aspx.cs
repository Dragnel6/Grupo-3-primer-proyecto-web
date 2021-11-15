using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grupo_3_primer_proyecto_web
{
    public partial class Tablas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Principal.aspx");
        }
    }
}