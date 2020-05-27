using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpeakCoreRegistrationSite
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        DataAccessor da = new DataAccessor();
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlState.DataSource = da.GetStates();
            ddlState.DataBind();
            ddlState.DataTextField = "State";
            ddlState.DataValueField = "State";
            ddlState.DataBind();
        }

        protected void btnRegContinue_Click(object sender, EventArgs e)
        {

        }
    }
}