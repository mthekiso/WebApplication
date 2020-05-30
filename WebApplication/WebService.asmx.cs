using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApplication
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {


        [WebMethod]
        public Boolean RegisterU(string fName, string surname, string username, string email, string crewJob, string userType, string password, string conPassword, int type)
        {
            Boolean success = false;
            LanceDataContext lc = new LanceDataContext();
            List<LUser> users = (from LUser in lc.LUsers
                                 where LUser.Email == email
                                 select LUser).ToList();
            LUser lp = new LUser();
            lp.FName = fName;
            lp.Surname = surname;
            lp.Username = username;
            lp.Email = email;
            lp.Crew = crewJob;
            lp.Usertype = userType;
            lp.Password = password;
            lp.Con_pass = conPassword;

            if (users.Count == 0)
            {
                lc.LUsers.InsertOnSubmit(lp);
                lc.SubmitChanges();
                success = true;
            }
            return success;
        }

        [WebMethod]
        public List<LUser> Login(string Username, string Password)
        {
            LanceDataContext lc = new LanceDataContext();
            List<LUser> users = (from LUser in lc.LUsers
                                 where LUser.Email == Username && LUser.Password == Password
                                 select LUser).ToList();

            return users;
        }
    }
}
