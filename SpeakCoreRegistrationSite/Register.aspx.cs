﻿
using BusinessLayer;
using BusinessLayer.Models;
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
        BusinessClass business = new BusinessClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["InternalRedirect"] == null || (bool)Session["InternalRedirect"] == false)
            {
                Response.Redirect("~/Login.aspx");
            }

            ddlStates.DataSource = business.GetStates();
            ddlStates.DataTextField = "State";
            ddlStates.DataValueField = "State";
            ddlStates.DataBind();

            ddlStates.Items.Insert(0, new ListItem("Select State", ""));
        }

        protected void btnRegContinue_Click(object sender, EventArgs e)
        {
            Person p = new Person();
            //TODO: sumbit form data to Data Access Layer
            p.FirstName = Request.Form["ctl00$MainContent$txtFirstName"];
            p.LastName = Request.Form["ctl00$MainContent$txtLastName"];
            p.State = Request.Form["ctl00$MainContent$ddlStates"];
            p.Email = Request.Form["ctl00$MainContent$txtEmail"];
            p.IsSubscribed = Request.Form["ctl00$MainContent$cbxSubscribe"] == "on" ? true : false;


            //On SUCCESS, redirect the user to the Confirmation Page
            Session["InternalRedirect"] = true;
            Response.Redirect("~/Confirmation.aspx");
        }
    }
}