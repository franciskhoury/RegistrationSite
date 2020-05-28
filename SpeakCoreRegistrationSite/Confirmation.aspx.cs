using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpeakCoreRegistrationSite
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["InternalRedirect"] == null || (bool)Session["InternalRedirect"] == false)
            {
                Response.Redirect("~/Login.aspx");
            }
            Session["InternalRedirect"] = false;
        }
    }
}