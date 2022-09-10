using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI.WebControls;

namespace EParking
{
    public partial class SelectSlot : System.Web.UI.Page
    {
        string slots = ""; //number of parking slots

        List<string> slotsDB; //store slotsIDs 
        List<string> carsDB; //store slotsIDs 

        // NEW CODE
        public static List<Reservation> reservations = new List<Reservation>();

        ListItem item;
        
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
                Price.InnerText = "Price per vehicle: " + (string)HttpContext.Current.Session["Price"] + " €";
            }

            slots = Parking.ReadSlotFromDB(BookNow.reservation.Parking_Name);
            if (slots == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' An error has occurred. Please report it through the Contact Us page. ')", true);
                return;
            }
            
            slotsDB = Reservation.ReadReservedSlotsFromDB(BookNow.reservation.Parking_Name, BookNow.reservation.Start_Date, BookNow.reservation.Finish_Date, BookNow.reservation.Start_Time, BookNow.reservation.Finish_Time);
            if (slotsDB == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' An error has occurred. Please report it through the Contact Us page. ')", true);
                return;
            }

            carsDB = Car.GetUsersCarsFromDB();
            if (carsDB == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' An error has occurred. Please report it through the Contact Us page. ')", true);
                return;
            }           

            for (int i = 1; i <= Int32.Parse(slots); i++) //show only available slots on the drop down list
            {
                if (slotsDB.Contains(i.ToString()))
                {
                    //Reserved
                    item = new ListItem("Slot" + i.ToString(), "Slot" + i.ToString(), false);
                    //DropDownList1.Items.Add(item);
                }
                else
                {
                    //Available
                    item = new ListItem("Slot" + i.ToString(), "Slot" + i.ToString());
                    DropDownList1.Items.Add(item);
                }
            }

            foreach (string s in carsDB) //show user's cars' plate numbers in drop down list
            {
                item = new ListItem(s, s);
                DropDownList2.Items.Add(item);
                //DropDownList2.Items.Add(item);
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            /* OLD CODE
            Reservation tempReservation = BookNow.reservation;
            BookNow.reservation = new Reservation(tempReservation.Parking_Name, DropDownList1.SelectedValue, DropDownList2.SelectedValue, tempReservation.Start_Date, tempReservation.Start_Time, tempReservation.Finish_Date, tempReservation.Finish_Time, true);
            */

            // NEW CODE
            // LISTA APO ANTIKEIMENA RESERVATIONS
            List<string> slots = new List<string>();
            List<string> vechicles = new List<string>();
            foreach (ListItem s in DropDownList1.Items)
            {
                if (s.Selected)
                {
                    slots.Add(s.Value);
                }
            }
            foreach (ListItem s in DropDownList2.Items)
            {
                if (s.Selected)
                {
                    vechicles.Add(s.Value);
                }
            }

            if (slots.Count == vechicles.Count)
            {
                for (int i = 0; i < slots.Count; i++)
                {
                    Reservation tempReservation = BookNow.reservation;
                    BookNow.reservation = new Reservation(tempReservation.Parking_Name, slots[i], vechicles[i], tempReservation.Start_Date, tempReservation.Start_Time, tempReservation.Finish_Date, tempReservation.Finish_Time, true);
                    reservations.Add(BookNow.reservation);
                }
                Response.Redirect("Payment.aspx");
            }
            else
            {
                Response.Redirect("SelectSlot.aspx");
            }


            /*Reservation tempReservation = BookNow.reservation;
            BookNow.reservation = new Reservation(tempReservation.Parking_Name, "slot9", "IYT4220", tempReservation.Start_Date, tempReservation.Start_Time, tempReservation.Finish_Date, tempReservation.Finish_Time, true);
            reservations.Add(BookNow.reservation);
            Reservation tempReservation1 = BookNow.reservation;
            BookNow.reservation = new Reservation(tempReservation1.Parking_Name, "slot10", "IYT4220", tempReservation1.Start_Date, tempReservation1.Start_Time, tempReservation1.Finish_Date, tempReservation1.Finish_Time, true);
            reservations.Add(BookNow.reservation);*/

            //Response.Redirect("Payment.aspx");
        }

    }
}