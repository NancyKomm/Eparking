using System;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace EParking
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session.Contents.Count == 0) //user is not supposed to use this webform, redirect to index
                Response.Redirect("HomePage.aspx");
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

        public void Submit_Click2(object sender, EventArgs a)
        {
            string notification = "";
            foreach (Reservation r in SelectSlot.reservations)
            {
                notification = Reservation.SaveReservationToDB(r.Parking_Name, r.Parking_Slot_Id, r.Plate_Number, r.Start_Date, r.Start_Time, r.Finish_Date, r.Finish_Time);
                
            }
            if (notification != null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                return;
            }

            //Hashes the user's card information
            byte[] cardnum = Encoding.UTF8.GetBytes(cardnumber.Text);//convert to bytes
            byte[] cardnum1 = new byte[cardnum.Length];
            for (int i = 0; i < cardnum.Length; i++) //copy bytes
            {
                cardnum1[i] = cardnum[i];
            }

            byte[] namecardnum = Encoding.UTF8.GetBytes(name.Text);//convert to bytes
            byte[] namecardnum1 = new byte[namecardnum.Length];
            for (int i = 0; i < namecardnum.Length; i++) //copy bytes
            {
                namecardnum1[i] = namecardnum[i];
            }

            byte[] expcardnum = Encoding.UTF8.GetBytes(expirationdate.Text);//convert to bytes
            byte[] expcardnum1 = new byte[expcardnum.Length];
            for (int i = 0; i < expcardnum.Length; i++) //copy bytes
            {
                expcardnum1[i] = expcardnum[i];
            }

            byte[] cvvcardnum = Encoding.UTF8.GetBytes(securitycode.Text);//convert to bytes
            byte[] cvvcardnum1 = new byte[cvvcardnum.Length];
            for (int i = 0; i < cvvcardnum.Length; i++) //copy bytes
            {
                cvvcardnum1[i] = cvvcardnum[i];
            }

            using (SHA512 shaM = new SHA512Managed()) //"SHA512Managed" object is disposed, there are no resourse leaks
            {
                // Hash card information
                string hashedCardnumber = Convert.ToBase64String(shaM.ComputeHash(cardnum1));
                string hashedCardname = Convert.ToBase64String(shaM.ComputeHash(namecardnum1));
                string hashedCardexp = Convert.ToBase64String(shaM.ComputeHash(expcardnum1));
                string hashedCardcvv = Convert.ToBase64String(shaM.ComputeHash(cvvcardnum1));

                User user = new User((string)HttpContext.Current.Session["Username"], hashedCardname, hashedCardnumber, hashedCardexp, hashedCardcvv);
                notification = Reservation.Pay(user.Cardholder_Name, user.Card_Number, user.Expiry_Date, user.CVV);
                if (notification != null)
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Reservation and transaction completed! ')", true);
                    Button2.Enabled = false;
                }
            }

            /* OLD CODE
            string notification = Reservation.SaveReservationToDB(BookNow.reservation.Parking_Name, BookNow.reservation.Parking_Slot_Id, BookNow.reservation.Plate_Number, BookNow.reservation.Start_Date, BookNow.reservation.Start_Time, BookNow.reservation.Finish_Date, BookNow.reservation.Finish_Time);
            if (notification != null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                return;
            }

            User user = new User((string)HttpContext.Current.Session["Username"], name.Text, cardnumber.Text, expirationdate.Text, securitycode.Text);
            notification = Reservation.Pay(user.Cardholder_Name, user.Card_Number, user.Expiry_Date, user.CVV);
            if (notification != null)
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Reservation and transaction completed! ')", true);
                Button2.Enabled = false;
            }
            */
        }

    }
}