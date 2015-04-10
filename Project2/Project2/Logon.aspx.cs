using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void projectLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //extract the username and password from the Login Control
            String loginUsername = this.projectLogin.UserName;
            String loginPassword = this.projectLogin.Password;

            //Check for a redirect url and set the controls DestinationUrl to it
            String redirectPage = Request.QueryString["ReturnUrl"];

            //Next, determine if the user's username/password are valid
            if (Membership.ValidateUser(loginUsername, loginPassword))
            {
                //Next, set the Authenticated value to true so the redirection happens
                e.Authenticated = true;
                //Next, check which role we are in and send to the appropriate page.
                if (this.projectLogin.DestinationPageUrl == null
                 || this.projectLogin.DestinationPageUrl == ""
                 || this.projectLogin.DestinationPageUrl.ToUpper() == (Request.ApplicationPath + "/Default.aspx"))
                {
                    FormsAuthentication.SetAuthCookie(loginUsername, false);
                    if (Roles.IsUserInRole(loginUsername, "Administrators"))
                    {
                        redirectPage = "~/Admin/newUser.aspx";
                    }
                    else if (Roles.IsUserInRole(loginUsername, "HRAdministrators"))
                    {
                        redirectPage = "~/EmployeeData/employees.aspx";
                    }
                    else
                    {
                        redirectPage = "~/Default.aspx";
                    }
                }
                Response.Redirect(redirectPage, true);
            }

        }
    }
}