using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Tamara
{
    public class DatabaseActions
    {
        public void BtnAddRegistration()
        {
            using (SqlConnection connection = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
            {
                connection.Open();
                string query = "INSERT INTO CMR_FoodParcelRegistrations(IdNumber, FirstName, Surname, CellNumber, Email, ResidentialAddress) " +
                               "VALUES(TextId.Text, TextName.Text, TextSurname.Text, TextCell.Text, TextEmail.Text, TextAddress.Text)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }
        }
    }
}