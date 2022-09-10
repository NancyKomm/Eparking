using System;
using System.Text;

namespace EParking
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear(); //clear session variables 
        }
        public void Submit_Click(object sender, EventArgs e)
        {
            string notification = Auxiliary.CheckUsername(Username.Text.Trim()); //check if username exists in database
            if (notification != null)
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
            else
            {
                //Generate 5-digit code
                StringBuilder code = new StringBuilder("", 5);
                for (int i = 1; i <= 5; i++)
                    code.Append(new Random(i * DateTime.Now.Millisecond).Next(10).ToString());
                //Create session variables
                Session["Username"] = Username.Text.Trim();
                Session["User_authenticated"] = "False";
                Session["Recovery_code"] = code.ToString();
                //Send verification email
                notification = Auxiliary.SendRecoveryEmail(Username.Text.Trim());
                if (notification != null)
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                else
                    Response.Redirect("ChangePassword.aspx");
            }
        }

    }
}