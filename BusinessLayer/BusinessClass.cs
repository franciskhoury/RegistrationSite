using Models;
using DataAccess;

using System.Data;

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
            return da.AddPerson(p);
        }

    }
}
