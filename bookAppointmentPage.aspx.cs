using project_for_Hospital.Classes.ClassBookingClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_for_Hospital.Appointment
{
    public partial class bookAppointmentPage : System.Web.UI.Page
    {
        private DB db = new DB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlDataSource2.SelectParameters["type"].DefaultValue = "Virtual";

                nametext.Text = db.get_connection(5, Session["id"].ToString(), true);
                TextBox1.Text = db.get_connection(2, Session["id"].ToString(), false);
                idtext.Text = db.get_connection(8, Session["id"].ToString());
                emailtext.Text = db.get_connection(1, Session["id"].ToString(), true);

                datetext.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");

                doctorList.Items.Insert(0, new ListItem("Please select", ""));
                doctorList.Items[0].Selected = true;
            }
        }

        protected void subbtn_Click(object sender, EventArgs e)
        {
            if ((!string.IsNullOrWhiteSpace(datetext.Text)) && (!string.IsNullOrWhiteSpace(TextBox1.Text)) && (!string.IsNullOrWhiteSpace(idtext.Text)) && (!string.IsNullOrWhiteSpace(emailtext.Text)) && (!string.IsNullOrWhiteSpace(emailtext.Text)) && (!string.IsNullOrWhiteSpace(datetext.Text)))
            {
                int doctor = -1;
                string time = timelist.SelectedItem.Text;
                if(doctorList.Enabled)
                {
                    if(doctorList.SelectedValue == "")
                        error.Text = "Required fields";
                    else
                    {
                        doctor = doctorList.Enabled == false ? 6 : Convert.ToInt32(doctorList.SelectedValue);
                        int clinicType = Convert.ToInt32(clinicsList.SelectedValue);
                        DateTime date = DateTime.Parse(datetext.Text);
                        int id = Convert.ToInt32(db.get_connection(0, Session["id"].ToString(), false));
                        db.insert_appointment(id, doctor, clinicType, time, date);
                        string prev = db.get_privilege(Session["id"].ToString(), 10);
                        if (prev == "Staff")
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Thanks for booking in FCMC');window.location ='StaffHomePage.aspx';", true);

                        else
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Thanks for booking in FCMC Rooms');window.location ='StudentHomePage.aspx';", true);
                    }

                }
                else
                {
                    doctor = doctorList.Enabled == false ? 6 : Convert.ToInt32(doctorList.SelectedValue);
                    int clinicType = Convert.ToInt32(clinicsList.SelectedValue);
                    DateTime date = DateTime.Parse(datetext.Text);
                    int id = Convert.ToInt32(db.get_connection(0, Session["id"].ToString(), false));
                    db.insert_appointment(id, doctor, clinicType, time, date);
                    string prev = db.get_privilege(Session["id"].ToString(), 10);
                    if (prev == "Staff")
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Thanks for booking in FCMC');window.location ='StaffHomePage.aspx';", true);

                    else
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Thanks for booking in FCMC Rooms');window.location ='StudentHomePage.aspx';", true);
                }
            }
            else
                error.Text = "Required fields";
        }

        protected void R2_CheckedChanged(object sender, EventArgs e)
        {
            SqlDataSource2.SelectParameters["type"].DefaultValue = "Attend";
            doctorList.Items.FindByValue(doctorList.SelectedValue).Selected = false;
            doctorList.Items.FindByValue("").Selected = true;
            doctorList.Enabled = true;

        }

        protected void R1_CheckedChanged(object sender, EventArgs e)
        {
            SqlDataSource2.SelectParameters["type"].DefaultValue = "Virtual";
            doctorList.Enabled = true;
            //doctorList.Items[5].Enabled = false;
        }

        protected void cnbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Appointment/bookAppointmentHomePage.aspx");
        }

        protected void log_out_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Appointment/LoginPage.aspx");
        }

        protected void hmgbtn_Click(object sender, EventArgs e)
        {
            string prev = db.get_privilege(Session["id"].ToString(), 10);
            if (prev == "Staff")
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "window.location ='StaffHomePage.aspx';", true);

            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "window.location ='StudentHomePage.aspx';", true);
        }

        protected void clinicsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(Convert.ToInt32(clinicsList.SelectedValue) != 2)
            {
                doctorList.Items.FindByValue(doctorList.SelectedValue).Selected = false;
                doctorList.Items.FindByValue("").Selected = true;
                doctorList.Enabled = false;
            }
            else
            {
                doctorList.Enabled = true;
                //doctorList.Items[5].Enabled = false;
            }
                

        }


    }
}