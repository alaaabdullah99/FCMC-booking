using project_for_Hospital.Classes.ClassBookingClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_for_Hospital.Appointment
{
    public partial class bookAppointmentHomePage : System.Web.UI.Page
    {
        private DB db = new DB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bookingbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Appointment/bookAppointmentPage.aspx");
        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Appointment/EditMyAppointmentPage.aspx");
        }

        protected void openbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Appointment/uploadimgPage.aspx");
        }

        protected void log_out_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Appointment/LoginPage.aspx");
        }

        protected void hmgbtn_Click(object sender, EventArgs e)
        {
            string prev = db.get_privilege(Session["id"].ToString(), 12);
            if (prev == "Staff")
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "window.location ='StaffHomePage.aspx';", true);

            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "window.location ='StudentHomePage.aspx';", true);
        }
    }
}