using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mystery_Case_Files
{
    public partial class Main_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChiefLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Chief-Detective_Module/Chief-Detective_Login.aspx");
        }

        protected void btnDetectiveLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Detective-Master_Module/Detective_Login.aspx");
        }
    }
}