using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class menuLogin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_User(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void Button_Business(object sender, EventArgs e)
        {
            Response.Redirect("");
        }
        protected void Button_Admin(object sender, EventArgs e)
        {
            Response.Redirect("");
        }
    }
}