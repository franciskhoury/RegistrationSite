using Models;

using System;
using System.Data;
using System.Data.SqlClient;

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

        public bool AddPerson(Person p)
        {
            bool pass = false;
            
            using (SqlConnection conn = new SqlConnection(connString))
            {
                int subscriber = p.IsSubscribed ? 1 : 0;
                SqlCommand cmd = new SqlCommand
                {
                    
                    Connection = conn,
                    CommandType = System.Data.CommandType.Text,
                    CommandText = $"insert into dbo.Registrants (EmailAddress,FirstName,LastName,State,IsSubscriber)" +
                    $" values ('{p.Email}','{p.FirstName}','{p.LastName}','{p.State}',{subscriber})"
                };
                try
                {
                    conn.Open();
                    pass = cmd.ExecuteNonQuery() == 1 ? true : false;
                }
                catch (Exception ex)
                {
                    //Do logging
                    Console.WriteLine(ex.Message);
                }


            }
            return pass;
        }


        public DataTable GetStates()
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand
                {
                    Connection = conn,
                    CommandType = System.Data.CommandType.Text,
                    CommandText = "select * from dbo.States"
                };
                try
                {
                    SqlDataAdapter adpt = new SqlDataAdapter(cmd.CommandText, conn);
                    
                    adpt.Fill(dt);
                }
                catch (Exception ex)
                {
                    //Do logging
                    Console.WriteLine(ex.Message);
                }


            }
            return dt;
        }
    }
}
