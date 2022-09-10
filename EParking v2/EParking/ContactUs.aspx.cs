using System;
using System.ComponentModel.DataAnnotations;
using System.Net.Mail;

namespace EParking
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear(); //clear session variables 
        }

        protected void SendMessage_Click(object sender, EventArgs e)
        {
            //Validate user's input.
            if (FirstName.Text.Trim().Length == 0 || LastName.Text.Trim().Length == 0 || Email.Text.Trim().Length == 0 || Message.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Please fill all input fields ')", true);
                return;
            }

            if (!new EmailAddressAttribute().IsValid(Email.Text.Trim())) //returns true if email is valid
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Invalid email ')", true);
                return;
            }

            //Send Message
            try
            {
                MailMessage mail = new MailMessage();

                mail.From = new MailAddress("eparking.papei2021@gmail.com"); //sender
                mail.To.Add(Email.Text.Trim()); //receiver
                mail.Subject = "eparking feedback reply"; //email's subject

                mail.Body = "Hi " + FirstName.Text.Trim() + " " + LastName.Text.Trim() + ",\n" +
                            "we received your message, thank you for your feedback!"; //email's body

                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("eparking.papei2021@gmail.com", "fvitmiccdaronrtz");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Email could not be sent. ')", true);
            }

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Thank you! Your message has been sent. ')", true);
        }

    }
}