using System;
using System.Web;

namespace EParking
{
    public partial class HomePageL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Contents.Count == 0) //user is not supposed to use this webform, redirect to index
                Response.Redirect("Homepage.aspx");
            else
            {
                if ((string)HttpContext.Current.Session["UserType"] != null)
                {
                    if (((string)HttpContext.Current.Session["UserType"]).Equals("True"))
                        Response.Redirect("Admin.aspx");
                }
                usernamel.InnerText = "Hi " + (string)HttpContext.Current.Session["Username"];
            }
        }
    }
}