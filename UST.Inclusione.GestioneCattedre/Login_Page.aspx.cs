using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if(ViewState["Logged"] != null)
                {
                    Response.Redirect(@"~/Default.aspx");
                }

                

            }

        }

        protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
        {
            BLL.Utente u1 = new BLL.Utente(Login1.UserName, Login1.Password);

            if (!u1.isAutenticade())
            {
                Login1.FailureText = "Username o Password Errati";
            }
            else
            {
                SiteMaster st = (SiteMaster)this.Master;
                st.LogIn(u1);
                ViewState.Add("Logged", 1);
                Response.Redirect(@"~/Default.aspx");
            }

        }
    }
}