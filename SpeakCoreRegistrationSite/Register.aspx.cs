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
            ddlStates.DataSource = da.GetStates();
            ddlStates.DataTextField = "State";
            ddlStates.DataValueField = "State";
            ddlStates.DataBind();

            ddlStates.Items.Insert(0, new ListItem("Select State", ""));
        }

        protected void btnRegContinue_Click(object sender, EventArgs e)
        {
            //TODO: sumbit form data to Data Access Layer

        }
    }
}