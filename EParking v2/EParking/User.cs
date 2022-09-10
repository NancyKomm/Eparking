using Npgsql;
using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Web;

namespace EParking
{
    public sealed class User
    {
        //----Fields----
        private readonly string first_name;
        private readonly string last_name;
        private readonly string email;
        private readonly string username;
        private readonly string hashed_password;
        private readonly string salt;
        private readonly string cardholder_name;
        private readonly string card_number;
        private readonly string expiry_date;
        private readonly string cvv;

        //----Properties----
        public string First_name { get { return first_name; } }
        public string Last_name { get { return last_name; } }
        public string Email { get { return email; } }
        public string Username { get { return username; } }
        public string Hashed_Password { get { return hashed_password; } }
        public string Salt { get { return salt; } }
        public string Cardholder_Name { get { return cardholder_name; } }
        public string Card_Number { get { return card_number; } }
        public string Expiry_Date { get { return expiry_date; } }
        public string CVV { get { return cvv; } }

        //----Constructors----
        public User(string first_name, string last_name, string email, string username, string hashed_password, string salt)
        {
            this.first_name = first_name;
            this.last_name = last_name;
            this.email = email;
            this.username = username;
            this.hashed_password = hashed_password;
            this.salt = salt;
        }

        public User(string username, string cardholder_name, string card_number, string expiry_date, string cvv)
        {
            this.username = username;
            this.cardholder_name = cardholder_name;
            this.card_number = card_number;
            this.expiry_date = expiry_date;
            this.cvv = cvv;
        }

        public User(string username)
        {
            this.username = username;
        }

        //----Methods----
        //================================================================================================================================
        public string SignUpUser(List<Car> cars)
        {
            string notification = null;
            StoreUserInfoToDB();
            //Insert user's car(s) to database
            foreach (Car car in cars)
            {
                notification = car.InsertCar();
                if (notification != null)
                    return notification; //stop the sign up process                
            }
            cars.Clear(); //clear list
            return null;
        }

        //Send verification email with 5-digit code.
        public string SendVerificationEmail()
        {
            try
            {
                MailMessage mail = new MailMessage();

                mail.From = new MailAddress("eparking.papei2021@gmail.com"); //sender
                mail.To.Add(Email); //receiver
                mail.Subject = "eparking confirmation email"; //email's subject               

                mail.Body = "Hi " + Username + ",\n" +
                            "Here is your 5-digit code to verify your email address: " + (string)HttpContext.Current.Session["Verification_code"]; //email's body

                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("eparking.papei2021@gmail.com", "fvitmiccdaronrtz");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
                return null;
            }
            catch
            {
                return "Verification email could not be sent.";
            }
        }

        //Stores user's info(firstname, lastname, email, username,hashedpassword,salt) in DB when he signs up.
        public string StoreUserInfoToDB()
        {
            string query = "insert into users values (@firstname, @lastname, @email, @username, @hashedPassword, @salt, false)";
            int rowsAffected = -1; //false value
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                //define query's parameters
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("firstname", First_name);
                command.Parameters.AddWithValue("lastname", Last_name);
                command.Parameters.AddWithValue("email", Email);
                command.Parameters.AddWithValue("username", Username);
                command.Parameters.AddWithValue("hashedPassword", Hashed_Password);
                command.Parameters.AddWithValue("salt", Salt);
                rowsAffected = command.ExecuteNonQuery(); //run query
                connection.Close();
            }
            catch
            {
                return "Sign up failed. Please report this error through the \"Contact us\" page.";
            }
            if (rowsAffected == -1)
                return "Sign up failed. There is a problem with the database. Please report this error through the \"Contact us\" page.";
            else
                return null;
        }

        //Used for logging in. Check if given username exists and if it does,then creates the hashed password anew and compares it with the one at the DB.
        //If username and password match, then he logs in.
        public string AuthenticateCredentials(string rawPassword)
        {
            string query = "select username, hashed_password, salt from users";
            List<string> userData = new List<string>(); //store user's username, hashed password and salt
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                    userData.Add(dataReader[0].ToString() + "|" + dataReader[1].ToString() + "|" + dataReader[2].ToString());
                connection.Close();
            }
            catch (Exception e)
            {
                return e.Message;
            }
            foreach (string dataRow in userData)
            {
                string[] dataCols = dataRow.Split('|');
                if (dataCols[0].Equals(Username))
                    if (dataCols[1].Equals(Auxiliary.HashPassword(rawPassword, Convert.FromBase64String(dataCols[2]))))
                        return null;
                    else
                        return "Incorrect password.";
            }
            return "Username does not exist.";
        }

        //Check if user is admin.
        public string IsAdmin()
        {
            string isAdmin = null;
            string query = "select admin from users where username = @username";
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("username", username);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                    isAdmin = dataReader[0].ToString(); //get result
                connection.Close();
                return isAdmin;
            }
            catch
            {
                return null;
            }
        }

        public string DeleteUser()
        {
            string query = "delete from users where username = @username";
            int rowsAffected = -1; //false value
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(Auxiliary.CONNECTION_STRING);
                connection.Open();
                //define query's parameters
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("username", Username);
                rowsAffected = command.ExecuteNonQuery(); //run query
                connection.Close();
            }
            catch
            {
                return "Delete failed. Please report this error through the Contact Us page.";
            }
            if (rowsAffected == -1)
                return "Delete failed. There is a problem with the database.";
            else
                return null;
        }
        //================================================================================================================================

    }
}