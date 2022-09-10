using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI.WebControls;

namespace EParking
{
    public partial class Admin : System.Web.UI.Page
    {
        List<string> reservationsDB; //store slotsIDs
        List<string> user_carDB; //store usernames and their cars

        int counter = 1;
        int counterID = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "False") //user is not supposed to use this webform, redirect to index
                Response.Redirect("HomePage.aspx");
            else
            {
                usernamel.InnerText = "Hi " + (string)HttpContext.Current.Session["Username"];
                UsernameLabel.Text = (string)HttpContext.Current.Session["Username"];
            }

            Show_Reservation("Parking Sync", Table1);
            Show_Reservation("Parking Span", Table2);
            Show_Reservation("Park Capsule", Table3);
            Show_Reservation("Hyper Parking", Table4);
            Show_User_car(UserCarTable);
        }

        private void Show_Reservation(string parking_name, Table myTable)
        {
            Reservation reservation = new Reservation(parking_name);
            reservationsDB = Reservation.GetReservationsFromDBByParking(reservation.Parking_Name);
            if (reservationsDB == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' An error has occurred. Please report it through the Contact Us page. ')", true);
                return;
            }

            TableRow row1 = new TableRow();
            foreach (string s in reservationsDB) //show all parking's reservations
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
                        btn.ID = "Id" + counterID.ToString();
                        counterID++;
                        btn.Text = "Delete";
                        btn.Click += new EventHandler(BtnHandler_Click);
                        btnCell.Controls.Add(btn);
                        row1.Cells.Add(btnCell);
                    }
                    myTable.Rows.Add(row1);
                    row1 = new TableRow();
                }
                counter++;
            }
        }

        private void Show_User_car(Table myTable) 
        {
            user_carDB = Car.GetAllUsersCars();
            if (user_carDB == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' An error has occurred. Please report it through the Contact Us page. ')", true);
                return;
            }

            TableRow row1 = new TableRow();

            foreach (string s in user_carDB) //show all vehicles' plate numbers and their users
            {
                TableCell cell1 = new TableCell();

                cell1.Text = s;
                row1.Cells.Add(cell1);

                if (counter == 2)
                {
                    counter = 0;
                    //Delete Button
                    TableCell btnCell = new TableCell();
                    Button btn = new Button();
                    btn.ID = "Id" + counterID.ToString();
                    counterID++;
                    btn.Text = "Delete User";
                    btn.Click += new EventHandler(BtnHandler_Click1);
                    btnCell.Controls.Add(btn);
                    row1.Cells.Add(btnCell);
                    myTable.Rows.Add(row1);
                    row1 = new TableRow();
                }
                counter++;
            }
        }

        // For deleting users
        private void BtnHandler_Click1(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            TableRow row1 = (TableRow)btn.Parent.Parent;
            List<string> data = new List<string>();
            foreach (TableCell cell in row1.Cells)
            {
                data.Add(cell.Text);
            }
            User user = new User(data[1]);
            string notification = user.DeleteUser();
            if (notification != null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' " + notification + " ')", true);
                return;
            }
            Response.Redirect("Admin.aspx");
        }

        // For deleting active reservations
        private void BtnHandler_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            TableRow row1 = (TableRow)btn.Parent.Parent;
            List<string> data = new List<string>();
            foreach (TableCell cell in row1.Cells)
            {
                data.Add(cell.Text);
            }
            Table a = (Table)btn.Parent.Parent.Parent;
            string parking_name = "";
            if (a.ID.ToString().Equals("Table1"))
            {
                parking_name = "Parking Sync";
            }
            else if (a.ID.ToString().Equals("Table2"))
            {
                parking_name = "Parking Span";
            }
            else if (a.ID.ToString().Equals("Table3"))
            {
                parking_name = "Park Capsule";
            }
            else if (a.ID.ToString().Equals("Table4"))
            {
                parking_name = "Hyper Parking";
            }
            Reservation reservation = new Reservation(parking_name, data[1], data[2], data[3], data[4], data[5], data[6], bool.Parse(data[7]));
            string notification = Reservation.DeleteReservation(reservation.Parking_Name, reservation.Parking_Slot_Id, reservation.Plate_Number, reservation.Start_Date, reservation.Start_Time, reservation.Finish_Date, reservation.Finish_Time);
            if (notification != null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' " + notification + " ')", true);
                return;
            }
            Response.Redirect("Admin.aspx");
        }

    }
}