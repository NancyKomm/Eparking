using System;
using System.Collections.Generic;
using System.Web;

namespace EParking
{
    public partial class InsertCar : System.Web.UI.Page
    {
        static bool userConnected = false; //user is logged in
        static bool atLeastOneCarInserted = false;
        static List<Car> cars = new List<Car>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Contents.Count == 0) //user is not supposed to use this webform, redirect to index
                Response.Redirect("HomePage.aspx");
            else if ((string)HttpContext.Current.Session["Username"] != null)
            {
                if ((string)HttpContext.Current.Session["UserType"] != null)
                {
                    if (((string)HttpContext.Current.Session["UserType"]).Equals("True"))
                        Response.Redirect("Admin.aspx");
                }
                usernamel.InnerText = "Hi " + (string)HttpContext.Current.Session["Username"];
                userConnected = true;
            }

            if (atLeastOneCarInserted)            
                Done.Visible = true;           
            else          
                Done.Visible = false;           
        }

        public void Insert_Car_Click(object sender, EventArgs e)
        {
            if(PlateNumberTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Invalid Plate Number.')", true);
                return;
            }
            //Check if there is an existing car in the database or in the current cars list
            foreach (Car c in cars)
            {
                if (PlateNumberTextBox.Text.Equals(c.PlateNumber))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Vehicle with plate number " + PlateNumberTextBox.Text + " already exists.')", true);
                    return;
                }
            }
            string notification = Auxiliary.checkForCarDublicates(PlateNumberTextBox.Text);
            if (notification != null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                return;
            }

            //Create car object and add it to list
            Car car;
            if (SignUp.userToSignUp != null)
                car = new Car(PlateNumberTextBox.Text, SignUp.userToSignUp.Username);
            else
                car = new Car(PlateNumberTextBox.Text, (string)HttpContext.Current.Session["Username"]);

            cars.Add(car);
            atLeastOneCarInserted = true; //now user can press "done" to finish signing up                                          
            Insert_Car.Text = "Insert next car"; //Change html input's value
            Done.Visible = true;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Vehicle inserted successfully.')", true);
        }

        public void Done_Click(object sender, EventArgs e)
        {
            if (!userConnected)
                if (atLeastOneCarInserted)
                {
                    //Insert user to database
                    string notification = SignUp.userToSignUp.SignUpUser(cars);
                    if (notification != null)
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                    else
                    {
                        Session.Clear(); //clear session variables
                        Session["Username"] = SignUp.userToSignUp.Username;
                        Response.Redirect("MyProfile.aspx");
                    }
                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' At least one car's plate number must be inserted. ')", true);
            else
            {
                string notification = null;
                //Insert user's car(s) to database
                foreach (Car car in cars)
                {
                    notification = car.InsertCar();
                    if (notification != null)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + notification + "')", true);
                        return; //stop the sign up process  
                    }
                }
                cars.Clear(); //clear list
                Response.Redirect("MyProfile.aspx");
            }
        }

    }
}