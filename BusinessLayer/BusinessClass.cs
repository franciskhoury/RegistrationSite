using Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using Utilities;

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

        public bool RegisterPerson(Person p)
        {
            return da.AddPerson(p);
        }

    }
}
