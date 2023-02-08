using project_for_Hospital.Classes.ClassBookingClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_for_Hospital.Appointment
{
    public partial class LoginPage : System.Web.UI.Page
    {
        private DB db = new DB();
        private string name;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            name = db.get_connection(3, Idfield.Text);
            string pass = db.get_connection(4, Idfield.Text);
            if (Idfield.Text == string.Empty && Passfield.Text == string.Empty)
            {
                customValidator1.ErrorMessage = "The username or password is not correct.";
                args.IsValid = false; // "The username or password is not correct."
            }
            else if (Idfield.Text.Trim() != name.Trim() || Passfield.Text.Trim() != pass.Trim())
            {
                customValidator1.ErrorMessage = "The username or password is not correct.";
                args.IsValid = false;
            }
        }

        protected void booking_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string privilege = db.get_privilege(name,10);
                if(privilege == "Admin")
                {
                    Session["id"] = name;
                    Response.Redirect("~/ClassBooking/AdminMainPage.aspx");
                }
                else if(privilege == "Staff")
                {
                    Session["id"] = name;
                    Response.Redirect("~/Appointment/StaffHomePage.aspx");
                }
                else if(privilege == "Student")
                {
                    Session["id"] = name;
                    Response.Redirect("~/Appointment/StudentHomePage.aspx");
                }
                else if(privilege == "Reception")
                {
                    Session["id"] = name;
                    Response.Redirect("~/Appointment/ReceptionApproval.aspx");
                }
            }
        }
    }
}