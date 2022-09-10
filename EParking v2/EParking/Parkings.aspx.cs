using System;

namespace EParking
{
    public partial class Parkings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear(); //clear session variables 
        }
    }
}