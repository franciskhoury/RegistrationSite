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
                    $"<p>Dear {p.FirstName},</p><p></p>" +
                    "<p>On behalf of Pharma Company, Inc., thank you for registering for the Speaker Training Meeting.</p><p></p>" +
                    "<p>You will receive a formal confirmatiomn email within the next 3 to 5 business days, including" +
                    "information for booking your travel.</p><p></p>" +
                    "<p>Regards,</p><p>The SpeakCore Team</p>");
            }

            return result; // What if registration succeeded and email send failed?
        }

    }
}
