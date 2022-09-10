using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EParking
{
    public sealed class Reservation
    {
        //----Fields----
        private readonly string parking_name;
        private readonly string parking_slot_id;
        private readonly string plate_number;
        private readonly string start_date;
        private readonly string start_time;
        private readonly string finish_date;
        private readonly string finish_time;
        private readonly bool active;

        //----Properties----
        public string Parking_Name { get { return parking_name; } }
        public string Parking_Slot_Id { get { return parking_slot_id; } }
        public string Plate_Number { get { return plate_number; } }
        public string Start_Date { get { return start_date; } }
        public string Start_Time { get { return start_time; } }
        public string Finish_Date { get { return finish_date; } }
        public string Finish_Time { get { return finish_time; } }
        public bool Active { get { return active; } }

        //----Constructors----
        public Reservation(string parking_name, string parking_slot_id, string plate_number, string start_date, string start_time, string finish_date, string finish_time, bool active)
        {
            this.parking_name = parking_name;
            this.parking_slot_id = parking_slot_id;
            this.plate_number = plate_number;
            this.start_date = start_date;
            this.start_time = start_time;
            this.finish_date = finish_date;
            this.finish_time = finish_time;
            this.active = active;
        }

        public Reservation(string parking_name, string start_date, string start_time, string finish_date, string finish_time, bool active)
        {
            this.parking_name = parking_name;
            this.start_date = start_date;
            this.start_time = start_time;
            this.finish_date = finish_date;
            this.finish_time = finish_time;
            this.active = active;
        }

        public Reservation(string parking_name)
        {
            this.parking_name = parking_name;
        }

        //----Methods----

        public static string Pay(string name, string cardnumber, string expirationdate, string securitycode)
        {
            string query = "Update users set cardholder_name=@cardholder_name, card_number=@card_number, expiry_date=@expiry_date, cvv=@cvv where username = @username;";
            int rowsAffected = -1; //false value
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                //define query's parameters
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("cardholder_name", name);
                command.Parameters.AddWithValue("card_number", cardnumber);
                command.Parameters.AddWithValue("expiry_date", expirationdate);
                command.Parameters.AddWithValue("cvv", securitycode);
                command.Parameters.AddWithValue("username", (string)HttpContext.Current.Session["Username"]);
                rowsAffected = command.ExecuteNonQuery(); //run query
                connection.Close();
            }
            catch 
            {
                return "Payment failed. Please report this error through the Contact Us page.";
            }
            if (rowsAffected == -1)
                return "Payment failed. There is a problem with the database.";
            else
                return null;
        }


        public static List<string> ReadReservedSlotsFromDB(string parkingName, string start_date, string finish_date, string start_time, string finish_time)
        {
            string query = "select parking_slot_id, start_date, start_time, finish_date, finish_time from reservations where parking_name=@parking_name and active=true;";
            List<string> slotsDB = new List<string>(); //store slotsIDs 
            List<string> start_dt = new List<string>(); //store start_dates
            List<string> start_t = new List<string>(); //store start_times
            List<string> finish_dt = new List<string>(); //store finish_dates
            List<string> finish_t = new List<string>(); //store finish_times
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("parking_name", BookNow.reservation.Parking_Name);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    slotsDB.Add(dataReader[0].ToString());
                    start_dt.Add(dataReader[1].ToString());
                    start_t.Add(dataReader[2].ToString());
                    finish_dt.Add(dataReader[3].ToString());
                    finish_t.Add(dataReader[4].ToString());

                }
                connection.Close();
                for (int i = 0; i < slotsDB.Count(); i++)
                {
                    // Delete the non reserved slots
                    if ((DateTime.Parse(start_dt[i]).Date > DateTime.Parse(start_date).Date) && (DateTime.Parse(start_dt[i]).Date > DateTime.Parse(finish_date).Date))
                    {
                        slotsDB[i] = "";
                    }
                    else if ((DateTime.Parse(finish_dt[i]).Date < DateTime.Parse(start_date).Date) && (DateTime.Parse(finish_dt[i]).Date < DateTime.Parse(finish_date).Date))
                    {
                        slotsDB[i] = "";
                    }
                    else if ((DateTime.Parse(start_dt[i]).Date == DateTime.Parse(finish_date).Date) && (DateTime.Parse(start_date).Date == DateTime.Parse(finish_dt[i]).Date))
                    {

                        if ((TimeSpan.Parse(start_t[i]) > TimeSpan.Parse(start_time)) && (TimeSpan.Parse(start_t[i]) > TimeSpan.Parse(finish_time)))
                        {
                            slotsDB[i] = "";
                        }
                        else if ((TimeSpan.Parse(finish_t[i]) < TimeSpan.Parse(start_time)) && ((TimeSpan.Parse(finish_t[i]) < TimeSpan.Parse(finish_time))))
                        {
                            slotsDB[i] = "";
                        }
                    }
                }
                return slotsDB;
            }
            catch 
            {
                return null;
            }
        }

        public static string SaveReservationToDB(string parkingName, string slot, string plateNumber, string startDate, string startTime, string finishDate, string finishTime)
        {
            string query = "insert into reservations values (@parking_name, @parking_slot_id, @plate_number, @start_date::date, @start_time, @finish_date::date, @finish_time, @active)";
            int rowsAffected = -1; //false value

            string time1 = startTime + ":00";
            string time2 = finishTime + ":00";

            string slotId = "";
            if (slot.Substring(slot.Length - 2) == "10")
            {
                slotId = slot.Substring(slot.Length - 2);
            }
            else
            {
                slotId = slot.Substring(slot.Length - 1);
            }

            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                //define query's parameters
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("parking_name", parkingName);
                command.Parameters.AddWithValue("parking_slot_id", Int32.Parse(slotId));
                command.Parameters.AddWithValue("plate_number", plateNumber);
                command.Parameters.AddWithValue("start_date", startDate);
                command.Parameters.AddWithValue("start_time", TimeSpan.Parse(time1));
                command.Parameters.AddWithValue("finish_date", finishDate);
                command.Parameters.AddWithValue("finish_time", TimeSpan.Parse(time2));
                command.Parameters.AddWithValue("active", true);
                rowsAffected = command.ExecuteNonQuery(); //run query
                connection.Close();
            }
            catch
            {
                return "Reservation failed. Please report this message through the Contact Us page.";
            }
            if (rowsAffected == -1)
                return "Reservation failed. There is a problem with the database.";
            else
                return null;
        }

        public static List<string> GetReservationsFromDB()
        {
            string query = "Select distinct * from reservations inner join cars on reservations.plate_number = cars.plate_number where username=@username;";
            List<string> reservation = new List<string>(); //store reservations 
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("username", (string)HttpContext.Current.Session["Username"]);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    reservation.Add(dataReader[0].ToString()); //parking name
                    reservation.Add(dataReader[1].ToString()); //parking slot
                    reservation.Add(dataReader[2].ToString()); //plate number
                    string d = dataReader[3].ToString(); 
                    reservation.Add(d.Substring(0,d.Length-12)); //start date
                    reservation.Add(dataReader[4].ToString()); //start time
                    string w = dataReader[5].ToString();
                    reservation.Add(w.Substring(0,w.Length-12)); //finish date
                    reservation.Add(dataReader[6].ToString()); //finish time
                    reservation.Add(dataReader[7].ToString()); //active
                }
                connection.Close();
                return reservation;
            }
            catch
            {
                return null;
            }
        }

        public static List<string> GetReservationsFromDBByParking(string parking_name)
        {
            string query = "Select distinct * from reservations inner join cars on reservations.plate_number = cars.plate_number where parking_name='" + parking_name + "';";
            List<string> reservation = new List<string>(); //store reservations 
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                //command.Parameters.AddWithValue("firstname", First_name);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    reservation.Add(dataReader[9].ToString());  //Username
                    reservation.Add(dataReader[1].ToString());  //Slot
                    reservation.Add(dataReader[2].ToString());  //Plate number
                    string d = dataReader[3].ToString();
                    reservation.Add(d.Substring(0, d.Length - 12)); //Start date
                    reservation.Add(dataReader[4].ToString());  //Start time
                    string w = dataReader[5].ToString();
                    reservation.Add(w.Substring(0, w.Length - 12)); //Finish date
                    reservation.Add(dataReader[6].ToString());  //Finish Time
                    reservation.Add(dataReader[7].ToString());  //Active
                }
                connection.Close();
                return reservation;
            }
            catch
            {
                return null;
            }
        }

        public static string DeleteReservation(string parkingName, string parking_slot_id, string plate_number, string start_date, string start_time, string finish_date, string finish_time)
        {
            string query = "delete from reservations where parking_name='"+ parkingName + "' and parking_slot_id ="+ parking_slot_id + " and plate_number='" + plate_number + "' and start_date='"+ start_date + "' and start_time='"+start_time+"' and finish_date='"+ finish_date + "' and finish_time= '"+ finish_time + "' and active= true";
            int rowsAffected = -1; //false value
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                //define query's parameters
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                rowsAffected = command.ExecuteNonQuery(); //run query
                connection.Close();
            }
            catch
            {
                return "Deletion failed. Please contact us about this error.";
            }
            if (rowsAffected == -1)
                return "Deletion failed. There is a problem with the database.";
            else
                return null;
        }

        public static List<string> GetWorkingHours(string parking_name)
        {
            string query = "Select start_time, finish_time from parkings where name='" + parking_name + "';";
            List<string> hoursDB = new List<string>(); //store reservations 
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                //command.Parameters.AddWithValue("firstname", First_name);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    hoursDB.Add(dataReader[0].ToString());
                    hoursDB.Add(dataReader[1].ToString());
                }
                connection.Close();
                return hoursDB;
            }
            catch
            {
                return null;
                //return e.Message;
            }
        }

    }
}