using Npgsql;
using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace EParking
{
    public class Auxiliary
    {
        public static readonly string CONNECTION_STRING = "Host=127.0.0.1;Port=5432;User ID=postgres;Password=maxrouso2;Database=eparkingv2;";

        //----Hash Password----
        //================================================================================================================================

        //Generate a salt to hash the user's password.
        public static byte[] GenerateSalt()
        {
            byte[] salt = new byte[32]; //salt length is 32(can be changed)
            using (var random = new RNGCryptoServiceProvider()) //"RNGCryptoServiceProvider" object is disposed, there are no resourse leaks
            {
                random.GetNonZeroBytes(salt); //salt
            }
            return salt;
        }

        //Hashes the user's password along with the salt.
        public static string HashPassword(string rawPassword, byte[] salt)
        {
            byte[] password = Encoding.UTF8.GetBytes(rawPassword);//convert to bytes
            byte[] passwordWithSalt = new byte[password.Length + salt.Length];
            for (int i = 0; i < password.Length; i++) //copy password bytes
            {
                passwordWithSalt[i] = password[i];
            }
            for (int i = 0; i < salt.Length; i++) //copy salt bytes
            {
                passwordWithSalt[i + password.Length] = salt[i];
            }
            using (SHA512 shaM = new SHA512Managed()) //"SHA512Managed" object is disposed, there are no resourse leaks
            {
                return Convert.ToBase64String(shaM.ComputeHash(passwordWithSalt)); //hashed password (with salt)
            }
        }
        //================================================================================================================================

        //----Sign Up----
        //================================================================================================================================

        //Email is pk, username is unique
        public static string CheckForDublicates(string email, string username)
        {
            string query = "select email, username from users";
            List<string> emailsDB = new List<string>(); //store emails 
            List<string> usernamesDB = new List<string>(); //store usernames
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    emailsDB.Add(dataReader[0].ToString());
                    usernamesDB.Add(dataReader[1].ToString());
                }
                connection.Close();
            }
            catch
            {
                return "An exeption was caught. Please report it.";
            }
            foreach (string emailDB in emailsDB) //check for duplicates (email)
                if (emailDB.Equals(email))
                    return "Email already exists";
            foreach (string usernameDB in usernamesDB) //check for duplicates (username)
                if (usernameDB.Equals(username))
                    return "Username already exists";
            return null;
        }      
        //================================================================================================================================
        
        //----Insert Car----
        //================================================================================================================================              

        //Check for car duplicates 
        public static string checkForCarDublicates(string plate_number)
        {
            string query = "select plate_number from cars;";
            List<string> carsDB = new List<string>(); //store cars 
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                {
                    carsDB.Add(dataReader[0].ToString());
                }
                connection.Close();
            }
            catch (Exception e)
            {
                return e.Message;
            }
            foreach (string plate_numberDB in carsDB) //check for duplicates (cars)
            {
                if (plate_number.Length == 6)
                {
                    if (plate_numberDB.Substring(plate_numberDB.Length - 1) == " ")
                    {
                        string str = plate_numberDB.Substring(0, 6);
                        if (str.Equals(plate_number))
                        {
                            return "Vehicle already exists";
                        }
                    }

                }
                if (plate_numberDB.Equals(plate_number))
                {
                    return "Vehicle already exists";
                }
            }
            return null;
        }
        //================================================================================================================================

        //----Log In----
        //================================================================================================================================ 

        //Validate user's input.
        public static string IsValidUserInputLogIn(string username, string password)
        {
            if (username.Trim().Length == 0)
                return "Please fill all input fields";
            if (password.Trim().Length < 6)
                return "Password must be at least 6 characters long";
            return null;
        }
        //================================================================================================================================ 

        //----Recover Password----
        //================================================================================================================================ 

        // Check if username exists in database
        public static string CheckUsername(string username)
        {
            string query = "select username from users";
            List<string> usernamesDB = new List<string>();
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                    usernamesDB.Add(dataReader[0].ToString());
                connection.Close();
            }
            catch
            {
                return "An exeption was caught. Please report it.";
            }
            foreach (string usernameDB in usernamesDB)
                if (usernameDB.Equals(username))
                    return null;
            return "Username does not exist.";
        }

        //Send recovery email with 5-digit code.
        public static string SendRecoveryEmail(string username)
        {
            // Find user's email based on his username
            string query = "select email from users where username = @username";
            string email = "";
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(CONNECTION_STRING);
                connection.Open();
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("username", username);
                NpgsqlDataReader dataReader = command.ExecuteReader(); //run query
                while (dataReader.Read())
                    email = dataReader[0].ToString();
                connection.Close();
            }
            catch
            {
                return "An exeption was caught. Please report it.";
            }
            //Now send recovery email
            try
            {
                MailMessage mail = new MailMessage();

                mail.From = new MailAddress("eparking.papei2021@gmail.com"); //sender
                mail.To.Add(email); //receiver
                mail.Subject = "eparking password recovery email"; //email's subject               

                mail.Body = "Hi " + username + ",\n" +
                            "Here is your 5-digit code to recover your password: " + (string)HttpContext.Current.Session["Recovery_code"]; //email's body

                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("eparking.papei2021@gmail.com", "fvitmiccdaronrtz");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
                return null;
            }
            catch
            {
                return "Recovery email could not be sent.";
            }
        }

        //Validate new password.
        public static string IsValidNewPassword(string password, string repeat_password)
        {
            if (!password.Equals(repeat_password))
                return "Passwords must match";
            if (password.Trim().Length < 6 || repeat_password.Trim().Length < 6)
                return "Password must be at least 6 characters long";
            return null;
        }

        public static string ChangePassword(string hashed_password, string salt)
        {
            string query = "update users set hashed_password = @hashed_password, salt = @salt where username = @username";
            int rowsAffected = -1; //false value
            try
            {
                NpgsqlConnection connection = new NpgsqlConnection(CONNECTION_STRING);
                connection.Open();
                //define query's parameters
                NpgsqlCommand command = new NpgsqlCommand(query, connection);
                command.Parameters.AddWithValue("hashed_password", hashed_password);
                command.Parameters.AddWithValue("salt", salt);
                command.Parameters.AddWithValue("username", (string)HttpContext.Current.Session["Username"]);
                rowsAffected = command.ExecuteNonQuery(); //run query
                connection.Close();
            }
            catch
            {
                return "Password could not be changed. Please report this error through the 'Contact us' page.";
            }
            if (rowsAffected == -1)
                return "Password could not be changed. There is a problem with the database. Please report this error through the 'Contact us' page.";
            else
                return null;
        }
        //================================================================================================================================

    }
}