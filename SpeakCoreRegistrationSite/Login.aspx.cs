using BusinessLayer;

using System;
using System.Web.Security;

namespace SpeakCoreRegistrationSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InvalidCredentialsMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            BusinessClass business = new BusinessClass();
            if (business.AuthenticateByPasswordOnly(txtPassword.Value))
            {
                Session["InternalRedirect"] = true;
                FormsAuthentication.RedirectFromLoginPage("", true);
            }
            else
            {
                InvalidCredentialsMessage.Visible = true;
            }
        }
    }
}