using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string confirm = Secrecy.HashPassword(txtConfirm.Text);
            string password = Secrecy.HashPassword(txtPassword.Text);

            WebService myWeb = new WebService();

            if (password == confirm)
            {
                if (UserType.SelectedItem.Text == "Crew")
                {
                    Boolean myCr = myWeb.RegisterU(txtName.Text, txtSurname.Text, txtUsername.Text, txtEmail.Text, CrewJob.SelectedItem.Text, UserType.SelectedItem.Text, txtPassword.Text, txtConfirm.Text, 0);
                    Response.Redirect("Login.aspx");
                }
                else if (UserType.SelectedItem.Text == "Production")
                {
                    Boolean myCr = myWeb.RegisterU(txtName.Text, txtSurname.Text, txtUsername.Text, txtEmail.Text, CrewJob.SelectedItem.Text, UserType.SelectedItem.Text, txtPassword.Text, txtConfirm.Text, 1);
                    Response.Redirect("Login.aspx");
                }
                else if (UserType.SelectedItem.Text == "Admin")
                {
                    Boolean myCr = myWeb.RegisterU(txtName.Text, txtSurname.Text, txtUsername.Text, txtEmail.Text, CrewJob.SelectedItem.Text, UserType.SelectedItem.Text, txtPassword.Text, txtConfirm.Text, 2);
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Password does not match";
                Response.Redirect("Registration.aspx");
            }
        }
    }
}