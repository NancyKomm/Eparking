using System;
using System.Collections.Generic;
using System.Web;

namespace EParking
{
    public partial class BookNow : System.Web.UI.Page
    {
        public static Reservation reservation;
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
                NameTextBox.Text = (string)HttpContext.Current.Session["Username"];
                usernamel.InnerText = "Hi " + (string)HttpContext.Current.Session["Username"];
            }
            
        }

        public void Submit_Click(object sender, EventArgs e)
        {
            string date1 = DateTextBox1.Text;
            string[] datedb1 = date1.Split('-');
            string time1 = TimeTextBox1.Text;
            string[] timedb1 = time1.Split(':');
            string date2 = DateTextBox2.Text;
            string[] datedb2 = date2.Split('-');
            string time2 = TimeTextBox2.Text;
            string[] timedb2 = time2.Split(':');

            bool flag = true; //valid check in and check out dates and times
            bool flag2 = true; //check in and check out dates are not past dates and times
            bool flag3 = true; //valid working hours

            List<string> workingHours = Reservation.GetWorkingHours(ParkingList.Text);
            TimeSpan parkingStartTime = TimeSpan.Parse(workingHours[0]);
            TimeSpan parkingFinishTime = TimeSpan.Parse(workingHours[1]);
            if ((parkingStartTime <= TimeSpan.Parse(time1 + ":00") && TimeSpan.Parse(time1 + ":00") <= parkingFinishTime) && (parkingStartTime <= TimeSpan.Parse(time2 + ":00") && TimeSpan.Parse(time2 + ":00") <= parkingFinishTime))
            {
                if (DateTime.Parse(date1).Date >= DateTime.Now.Date)       // Check in date can't be sooner than today's date
                {
                    if (Int32.Parse(datedb1[0]) > Int32.Parse(datedb2[0]))   //year
                    {
                        flag = false;
                    }
                    else
                    {
                        if (Int32.Parse(datedb1[1]) > Int32.Parse(datedb2[1]))   //month
                        {
                            flag = false;
                        }
                        else if (Int32.Parse(datedb1[1]) == Int32.Parse(datedb2[1]))
                        {

                            if (Int32.Parse(datedb1[2]) > Int32.Parse(datedb2[2]))   //day
                            {
                                flag = false;
                            }
                        }
                    }
                    if (Int32.Parse(datedb1[0]) == Int32.Parse(datedb2[0]) && Int32.Parse(datedb1[1]) == Int32.Parse(datedb2[1]) && Int32.Parse(datedb1[2]) == Int32.Parse(datedb2[2]))
                    {
                        if (Int32.Parse(timedb1[0]) > Int32.Parse(timedb2[0]))   //hour
                        {
                            flag = false;

                        }
                        else if (Int32.Parse(timedb1[0]) == Int32.Parse(timedb2[0]))
                        {
                            if (Int32.Parse(timedb1[1]) >= Int32.Parse(timedb2[1]))    //minutes
                            {
                                flag = false;
                            }
                        }
                    }
                }
                else
                {
                    flag2 = false;
                }
            }
            else
            {
                flag3 = false;
            } 

            reservation = new Reservation(ParkingList.Text, DateTextBox1.Text, TimeTextBox1.Text, DateTextBox2.Text, TimeTextBox2.Text, true);

            string notification;
            if (!flag)
            {
                notification = "Check out date and time cannot be sooner than Check in.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                return;
            }
            if (!flag2)
            {
                notification = "Check in date cannot be a past date.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                return;
            }
            else if (!flag3)
            {
                string notification1 = "Parking is closed in this timespan. Please choose another time.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification1 + "')", true);
                return;
            }
            // Calculating Price
            DateTime a = new DateTime(Int32.Parse(datedb1[0]), Int32.Parse(datedb1[1]), Int32.Parse(datedb1[2]), Int32.Parse(timedb1[0]), Int32.Parse(timedb1[1]), 00);
            DateTime b = new DateTime(Int32.Parse(datedb2[0]), Int32.Parse(datedb2[1]), Int32.Parse(datedb2[2]), Int32.Parse(timedb2[0]), Int32.Parse(timedb2[1]), 00);
            System.Diagnostics.Debug.WriteLine(b.Subtract(a).TotalMinutes);
            int tot_mins = Convert.ToInt32(b.Subtract(a).TotalMinutes);
            int days = tot_mins / 1440;
            int hours = (tot_mins % 1440) / 60;
            int mins = tot_mins % 60;
            System.Diagnostics.Debug.WriteLine("!!!!!!!!!!!!!!!! " + days.ToString());
            System.Diagnostics.Debug.WriteLine("!!!!!!!!!!!!!!!! " + hours.ToString());
            System.Diagnostics.Debug.WriteLine("!!!!!!!!!!!!!!!! " + mins.ToString());
            double price = 25 * Math.Abs(days) + 5 * Math.Abs(hours) + 0.1 * Math.Abs(mins);
            Session["Price"] = price.ToString();
            Response.Redirect("SelectSlot.aspx");
        }

    }
}