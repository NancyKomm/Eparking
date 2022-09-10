using System;

namespace EParking
{
    // Main Page
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear(); //clear session variables 
        }

    }
}