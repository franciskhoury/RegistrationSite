using Models;
using DataAccess;

using System.Data;
using Utilities;
using System.Configuration;

namespace BusinessLayer
{
    public class BusinessClass
    {
        DataAccessor da;
        public BusinessClass()
        {
            da = new DataAccessor();
        }

        public bool AuthenticateByPasswordOnly(string pw)
        {

            return da.AuthenticateByPasswordOnly(pw);
        }

        public DataTable GetStates()
        {
            return da.GetStates();
        }

        public int RegisterPerson(Person p)
        {
            int result = da.AddPerson(p);
            if (result == 1)
            {
                EmailUtilities.SendEmail(ConfigurationManager.AppSettings["EmailUsername"], 
                    p.Email, 
                    "Registration to Speakcore Conference", 
                    $"<div>Hi {p.FirstName},</div><div>See you at the conference!</div>");
            }

            return result; // What if registration succeeded and email send failed?
        }

    }
}
