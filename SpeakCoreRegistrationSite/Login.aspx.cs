﻿using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpeakCoreRegistrationSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataAccessor da = new DataAccessor();
            if (da.AuthenticateByPasswordOnly(txtPassword.Value))
            {
                InvalidCredentialsMessage.Visible = false;
            }
            else
            {
                InvalidCredentialsMessage.Visible = true;
            }
        }
    }
}