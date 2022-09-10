using System;

namespace EParking
{
    // LOG IN
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear(); //clear session variables 
        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            //Check if user's input is valid
            string notification = Auxiliary.IsValidUserInputLogIn(Username.Text.Trim(), Password.Text.Trim());
            if (notification != null)
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
            else
            {
                User user = new User(Username.Text.Trim());
                //Check if user's credentials match a dababase record
                notification = user.AuthenticateCredentials(Password.Text.Trim());
                if (notification != null)
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                else
                {
                    //Check if user is admin
                    string isAdmin = user.IsAdmin();
                    if (isAdmin != null)
                    {
                        Session["Username"] = user.Username;
                        Session["UserType"] = isAdmin;
                        if (isAdmin.Equals("True"))
                            Response.Redirect("Admin.aspx"); 
                        else if (isAdmin.Equals("False"))
                            Response.Redirect("MyProfile.aspx");                        
                    }
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' An exeption was caught.Please report it. ')", true);
                }
            }
        }

    }
}