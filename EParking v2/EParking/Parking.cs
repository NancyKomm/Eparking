using Npgsql;
using System;
using System.Web;

namespace EParking
{
    public sealed class Parking
    {
        //----Fields----
        private readonly string name;
        private readonly string region;
        private readonly int number_of_slots;
        private readonly DateTime start_time;
        private readonly DateTime finish_time;

        //----Properties----
        public string Name { get { return name; } }
        public string Region { get { return region; } }
        public int Number_Of_Slots { get { return number_of_slots; } }
        public DateTime Start_time { get { return new DateTime(start_time.Hour, start_time.Minute, start_time.Second); } }
        public DateTime Finish_time { get { return new DateTime(finish_time.Hour, finish_time.Minute, finish_time.Second); } }

        //----Constructors----
        public Parking(string name, DateTime start_time, DateTime finish_time)
        {
            this.name = name;

            DateTime tempStartTime = new DateTime(start_time.Hour, start_time.Minute, start_time.Second);
            this.start_time = tempStartTime;

            DateTime tempFinishTime = new DateTime(finish_time.Hour, finish_time.Minute, finish_time.Second);
            this.finish_time = tempFinishTime;
        }

        public Parking(string name)
        {
            this.name = name;
        }


        //----Method----
        public static string ReadSlotFromDB(string parkingName)
        {
            string query = "select number_of_slots from parkings where name=@parking_name;";
            string slots = "";
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("parking_name", BookNow.reservation.Parking_Name);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    slots = dataReader[0].ToString();
                }
                connection.Close();
                return slots;
            }
            catch
            {
                return null;
            }
        }

    }
}