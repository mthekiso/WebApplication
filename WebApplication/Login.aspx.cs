using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;

namespace WebApplication
{
    public partial class Login : System.Web.UI.Page
    {
        //SqlCommand cmd = new SqlCommand();
        //SqlConnection con = new SqlConnection();
        //SqlDataAdapter ada = new SqlDataAdapter();
        //DataSet ds = new DataSet();

        WebService ser = new WebService();

        protected void Page_Load(object sender, EventArgs e)
        {
                 
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            try
            {
                List<LUser> user = ser.Login(Email.Text, Password.Text).ToList();

                if (user.Count == 1)
                {
                    if(user.ElementAt(0).check == 0)
                    {
                        Response.Redirect("Apply.aspx");
                        Session["Crew"] = user;
                    }
                    else if (user.ElementAt(0).check == 1)
                    {
                        Response.Redirect("Advert.aspx");
                        Session["Production"] = user;
                    }
                    else if (user.ElementAt(0).check == 2)
                    {
                        Response.Redirect("");
                        Session["Admin"] = user;
                    }

                }
            }

            catch (Exception mail)
            {
                Error.Text = mail.Message;
            }

        }
    }
}