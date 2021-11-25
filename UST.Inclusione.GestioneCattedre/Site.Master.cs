using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UST.Inclusione.GestioneCattedre
{
    public partial class SiteMaster : MasterPage
    {
        public BLL.Utente User
        {
            get { return (BLL.Utente)Session["LogIn"]; } 
        }

        public void LogIn(BLL.Utente user)
        {
            Login.Text = user.Username;
            Session.Add("LogIn", user);
            
            

        }

        private void CheckAccesso()
        {
            if (Session["LogIn"] == null)
            {
                Login.Text = "Area Riservata";
                a_Login.Visible = true;
                a_Logout.Visible = false;

            }
            else 
            {
                BLL.Utente user = (BLL.Utente)Session["LogIn"];
                Login.Text = user.Username;
                a_Login.Visible = false;
                a_Logout.Visible = true;

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.CheckAccesso();
        }

    }
}