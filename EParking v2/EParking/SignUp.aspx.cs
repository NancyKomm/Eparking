using System;
using System.Text;

namespace EParking
{
    // SIGN UP
    public partial class SignUp : System.Web.UI.Page
    {
        public static User userToSignUp;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        public void Submit_Click(object sender, EventArgs e)
        {
            //Check if user's input is valid
            if (!Password.Text.Trim().Equals(Repeat_Password.Text.Trim()))
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Passwords must match ')", true);
            else
            {
                //Check database for duplicates (email, username)
                string notification = Auxiliary.CheckForDublicates(Email.Text, Username.Text);
                if (notification != null)
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                else
                {
                    //Create salt
                    string salt = Convert.ToBase64String(Auxiliary.GenerateSalt());
                    //Hash password
                    string hashed_password = Auxiliary.HashPassword(Password.Text, Convert.FromBase64String(salt));
                    //Create user object
                    User user = new User(FirstName.Text, LastName.Text, Email.Text, Username.Text, hashed_password, salt);
                    //Generate 5-digit code
                    StringBuilder code = new StringBuilder("", 5);
                    for (int i = 1; i <= 5; i++)
                        code.Append(new Random(i * DateTime.Now.Millisecond).Next(10).ToString());
                    //Create session variable
                    Session["Verification_code"] = code.ToString();
                    //Save user
                    userToSignUp = user;
                    //Send verification email
                    notification = userToSignUp.SendVerificationEmail();
                    if (notification != null)
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                    else
                        Response.Redirect("VerificationCode.aspx");
                }
            }
        }

    }
}