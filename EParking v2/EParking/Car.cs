using Npgsql;
using System;
using System.Collections.Generic;
using System.Web;

namespace EParking
{
    public sealed class Car
    {
        //----Fields----
        private readonly string plate_number;
        private readonly string username;

        //----Properties----
        public string PlateNumber { get { return plate_number; } }
        public string Username { get { return username; } }

        //----Constructor----
        public Car(string plate_number, string username)
        {
            this.plate_number = plate_number;
            this.username = username;
        }
        
        //----Methods----
        //================================================================================================================================

        //Insert car to database
        public string InsertCar()
        {
            string query = "insert into cars values (@plate_number, @username)";
            int rowsAffected = -1; //false value
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                //define query's parameters
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("plate_number", PlateNumber);
                command.Parameters.AddWithValue("username", Username);
                rowsAffected = command.ExecuteNonQuery(); //run query
                connection.Close();
            }
            catch
            {
                return "Car insertion failed. Sign up failed. Please report this error through the 'Contact us' page.";
            }
            if (rowsAffected == -1)
                return "Car insertion failed. Sign up failed. There is a problem with the database. Please report this error through the 'Contact us' page.";
            else
                return null;
        }

        public static List<string> GetUsersCarsFromDB()
        {
            string query = "select plate_number from cars where username='" + (string)HttpContext.Current.Session["Username"] + "';";
            List<string> plate_numbersDB = new List<string>(); //store plate_numberIDs 
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    plate_numbersDB.Add(dataReader[0].ToString());
                }
                connection.Close();
                return plate_numbersDB;
            }
            catch
            {
                return null;
            }
        }

        public static List<string> GetAllUsersCars()
        {
            string query = "Select * from cars;";
            List<string> user_Car = new List<string>(); //store reservations 
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    user_Car.Add(dataReader[0].ToString());
                    user_Car.Add(dataReader[1].ToString());
                }
                connection.Close();
                return user_Car;
            }
            catch
            {
                return null;
            }
            //================================================================================================================================

        }

    }
}