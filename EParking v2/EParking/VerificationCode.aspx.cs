using System;
using System.Web;

namespace EParking
{
    public partial class VerificationCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Contents.Count == 0) //user is not supposed to use this webform, redirect to index
                Response.Redirect("Homepage.aspx");
        }

        public void Submit_Click(object sender, EventArgs e)
        {
            if (VCode.Text.Trim().Equals((string)HttpContext.Current.Session["Verification_code"]))
                Response.Redirect("InsertCar.aspx");
            else
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Verification code does not match! ')", true);
        }
    }
}