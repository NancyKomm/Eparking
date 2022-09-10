using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Threading;
using System.Web;
using System.Web.UI.WebControls;

namespace EParking
{
    public partial class MyProfile : System.Web.UI.Page
    {
        User user;
        List<string> carsDB; //store slotsIDs
        List<string> reservationsDB; //store slotsIDs

        int counter = 1;
        int counterID = 1; //for delete button name
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
                UsernameLabel.Text = (string)HttpContext.Current.Session["Username"];
            }

            user = new User((string)HttpContext.Current.Session["Username"]);

            carsDB = Car.GetUsersCarsFromDB();
            if(carsDB == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Vehicles could not be loaded. Please contact us about this error. ')", true);
                return;
            }

            foreach (string s in carsDB) // foreach plate number
            {
                TableRow row = new TableRow();
                TableCell cell1 = new TableCell(); //vehicle type
                TableCell cell2 = new TableCell();  //plate number
                if (s.Last().Equals(' '))
                {
                    cell1.Text = "motorcycle";
                }
                else
                {
                    cell1.Text = "car";
                }
                cell2.Text = s; //plate number

                row.Cells.Add(cell1);
                row.Cells.Add(cell2);
                Table1.Rows.Add(row);
            }

            reservationsDB = Reservation.GetReservationsFromDB();
            if (reservationsDB == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Reservations could not be loaded. Please contact us about this error. ')", true);
                return;
            }

            TableRow row1 = new TableRow();
            foreach (string s in reservationsDB)
            {                              
                TableCell cell1 = new TableCell();
                
                cell1.Text = s; 
                row1.Cells.Add(cell1);
                if (counter == 8)
                {
                    counter = 0;
                    if (s == "True")
                    {
                        //Delete Button
                        TableCell btnCell = new TableCell();
                        Button btn = new Button();
                        btn.ID = "Id"+counterID.ToString();
                        counterID++;
                        btn.Text = "Delete";
                        btn.Click += new EventHandler(BtnHandler_Click);
                        btnCell.Controls.Add(btn);
                        row1.Cells.Add(btnCell);
                    }
                    Table2.Rows.Add(row1);
                    row1 = new TableRow();
                }
                counter++;
            }

            //Create thread that notifies user about his upcoming reservations
            Thread thread = new Thread(NotifyUserAboutReservation);
            thread.Start();
        }

        // For deleting active reservations
        private void BtnHandler_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            TableRow row1 = (TableRow)btn.Parent.Parent;
            List<string> data = new List<string>();
            foreach (TableCell cell in row1.Cells)
            {
                data.Add(cell.Text); //data that are about to get deleted
            }
            Reservation reservation = new Reservation(data[0], data[1], data[2], data[3], data[4], data[5], data[6], bool.Parse(data[7]));
            string notification = Reservation.DeleteReservation(reservation.Parking_Name, reservation.Parking_Slot_Id, reservation.Plate_Number, reservation.Start_Date, reservation.Start_Time, reservation.Finish_Date, reservation.Finish_Time);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' " + notification + " ')", true);
            Response.Redirect("MyProfile.aspx");
        }

        //----Send Notification----
        //================================================================================================================================ 
        public void NotifyUserAboutReservation()
        {

            //Select all user's reservations.
            string query = "select parking_name, parking_slot_id, plate_number, start_date, start_time, finish_date, finish_time, active from reservations natural join cars natural join users where username = @username";
            List<Reservation> reservations = new List<Reservation>();
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("username", user.Username);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    Reservation reservation = new Reservation(dataReader[0].ToString(), dataReader[1].ToString(), dataReader[2].ToString(), dataReader[3].ToString(), dataReader[4].ToString(), dataReader[5].ToString(), dataReader[6].ToString(), bool.Parse(dataReader[7].ToString()));
                    reservations.Add(reservation);
                }
                connection.Close();
            }
            catch
            {
                //do nothing
            }

            //Check if there is a reservation is in an hour or less
            foreach (Reservation reservation in reservations)
            {
                DateTime start_date = DateTime.Parse(reservation.Start_Date);
                DateTime start_time = DateTime.Parse(reservation.Start_Time);

                int start_year = start_date.Year;
                int start_month = start_date.Month;
                int start_day = start_date.Day;

                int start_hour = start_time.Hour;
                int start_min = start_time.Minute;
                int start_sec = start_time.Second;
                int start_total_seconds = start_hour * 3600 + start_min * 60 + start_sec;

                int current_year = DateTime.Now.Year;
                int current_month = DateTime.Now.Month;
                int current_day = DateTime.Now.Day;

                int current_hour = DateTime.Now.Hour;
                int current_min = DateTime.Now.Minute;
                int current_sec = DateTime.Now.Second;
                int current_total_seconds = current_hour * 3600 + current_min * 60 + current_sec;

                if (start_year == current_year && start_month == current_month && start_day == current_day) //if reservation is today
                    if (start_total_seconds - current_total_seconds <= 3600 && start_total_seconds - current_total_seconds > 0) //if the reservation starts in an hour or less
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Hi " + user.Username + "\nYour reservation starts in less than an hour. ')", true);

                        // Find user's email based on his username
                        query = "select email from users where username = @username";
                        string email = "";
                        try
                        {
                            NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                            connection.Open();
                            NpgsqlCommand command = new NpgsqlCommand(query, connection);
                            command.Parameters.AddWithValue("username", user.Username);
                            NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                            while (dataReader.Read())
                                email = dataReader[0].ToString();
                            connection.Close();
                        }
                        catch
                        {
                            //do nothing
                        }

                        //Now send notification email
                        try
                        {
                            MailMessage mail = new MailMessage();

                            mail.From = new MailAddress("eparking.papei2021@gmail.com"); //sender
                            mail.To.Add(email); //receiver
                            mail.Subject = "eparking reservation notification reminder email"; //email's subject               

                            mail.Body = "Hi " + user.Username + ",\n" +
                                        "Your reservation starts in less than an hour. \n" +
                                        "Your vehicle with plate number " + reservation.Plate_Number + " has a parking reservation at " + reservation.Parking_Name + "\n" +
                                        "that starts at " + start_hour.ToString() + ":" + start_min.ToString() + ".";  //email's body

                            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                            SmtpServer.Port = 587;
                            SmtpServer.Credentials = new System.Net.NetworkCredential("eparking.papei2021@gmail.com", "fvitmiccdaronrtz");
                            SmtpServer.EnableSsl = true;
                            SmtpServer.Send(mail);
                        }
                        catch
                        {
                            //do nothing
                        }
                    }

                //Send email for ending reservations
                DateTime finish_date = DateTime.Parse(reservation.Finish_Date);
                DateTime finish_time = DateTime.Parse(reservation.Finish_Time);

                int finish_year = finish_date.Year;
                int finish_month = finish_date.Month;
                int finish_day = finish_date.Day;

                int finish_hour = finish_time.Hour;
                int finish_min = finish_time.Minute;
                int finish_sec = finish_time.Second;
                int finish_total_seconds = finish_hour * 3600 + finish_min * 60 + finish_sec;

                current_year = DateTime.Now.Year;
                current_month = DateTime.Now.Month;
                current_day = DateTime.Now.Day;

                current_hour = DateTime.Now.Hour;
                current_min = DateTime.Now.Minute;
                current_sec = DateTime.Now.Second;
                current_total_seconds = current_hour * 3600 + current_min * 60 + current_sec;

                if (start_year == current_year && start_month == current_month && start_day == current_day) //if reservation is today
                    if (current_total_seconds - finish_total_seconds <= 3600 && current_total_seconds - finish_total_seconds < 0) //if the reservation ends in an hour or less
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Hi " + user.Username + ",\nYour reservation ends in less than an hour. Keep in mind that there will be extra expenses if you are late on your reservation. ')", true);

                        // Find user's email based on his username
                        query = "select email from users where username = @username";
                        string email = "";
                        try
                        {
                            NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                            connection.Open();
                            NpgsqlCommand command = new NpgsqlCommand(query, connection);
                            command.Parameters.AddWithValue("username", user.Username);
                            NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                            while (dataReader.Read())
                                email = dataReader[0].ToString();
                            connection.Close();
                        }
                        catch
                        {
                            //do nothing
                        }

                        //Now send notification email
                        try
                        {
                            MailMessage mail = new MailMessage();

                            mail.From = new MailAddress("eparking.papei2021@gmail.com"); //sender
                            mail.To.Add(email); //receiver
                            mail.Subject = "eparking reservation notification reminder email"; //email's subject               

                            mail.Body = "Hi " + user.Username + ",\n" +
                                        "Your reservation ends in less than an hour." +
                                        "Your vehicle with plate number " + reservation.Plate_Number + " has to get picked up at " + reservation.Parking_Name + " at " + finish_hour.ToString() + ":" + finish_min.ToString() + ".\n" +
                                        "Keep in mind that there will be extra expenses if you are late on your reservation."; //email's body

                            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                            SmtpServer.Port = 587;
                            SmtpServer.Credentials = new System.Net.NetworkCredential("eparking.papei2021@gmail.com", "fvitmiccdaronrtz");
                            SmtpServer.EnableSsl = true;
                            SmtpServer.Send(mail);
                        }
                        catch
                        {
                            //do nothing
                        }
                    }

            }
        }
        //================================================================================================================================ 
    }
}