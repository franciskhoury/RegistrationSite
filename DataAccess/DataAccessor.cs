using System;
using System.Data.SqlClient;
using System.Runtime.CompilerServices;

namespace DataAccess
{
    public class DataAccessor
    {
        string connString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=UserRegistration;Integrated Security=SSPI;";

        public bool AuthenticateByPasswordOnly(string pw)
        {
            bool pass = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand{Connection = conn, CommandType = System.Data.CommandType.Text, 
                    CommandText = $"select 1 from dbo.Credentials where Password = '{pw}'" };
                try
                {
                    conn.Open();
                    pass = cmd.ExecuteScalar() == null? false : true;
                }
                catch (Exception ex)
                {
                    //Do logging
                    Console.WriteLine(ex.Message);
                }


            }
            return pass;
        }
    }
}
