using System;
using System.Web;

namespace EParking
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Contents.Count == 0) //user is not supposed to use this webform, redirect to index           
                Response.Redirect("Homepage.aspx");

            if (((string)HttpContext.Current.Session["User_authenticated"]).Equals("False"))
            {
                PasswordLabel.Visible = false;
                Password.Visible = false;
                ConfirmPasswordLabel.Visible = false;
                ConfirmPassword.Visible = false;
                ChangePasswordButton.Visible = false;
            }
        }
        public void VerifyCodeButton_Click(object sender, EventArgs e)
        {
            if (Code.Text.Equals((string)HttpContext.Current.Session["Recovery_code"]))
            {
                PasswordLabel.Visible = true;
                Password.Visible = true;
                ConfirmPasswordLabel.Visible = true;
                ConfirmPassword.Visible = true;
                ChangePasswordButton.Visible = true;
                Session["User_authenticated"] = "True";
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Recovery code does not match! ')", true);
        }

        public void ChangePasswordButton_Click(object sender, EventArgs e)
        {

            string notification = Auxiliary.IsValidNewPassword(Password.Text.Trim(), ConfirmPassword.Text.Trim());
            if (notification != null)
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
            else
            {
                //Create salt
                string salt = Convert.ToBase64String(Auxiliary.GenerateSalt());
                //Hash password
                string hashed_password = Auxiliary.HashPassword(Password.Text.Trim(), Convert.FromBase64String(salt));
                notification = Auxiliary.ChangePassword(hashed_password, salt);
                if (notification != null)
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Password changed successfully! ')", true);
                    VerifyCodeButton.Enabled = false;
                    ChangePasswordButton.Enabled = false;
                }
            }
        }

    }
}