using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mystery_Case_Files.Chief_Detective_Module
{
    public partial class Chief_Detective_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Chief_Dashboard.aspx");
        }
    }
}