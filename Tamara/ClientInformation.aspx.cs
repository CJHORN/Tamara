using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tamara
{
    public partial class ClientInformation : System.Web.UI.Page
    {

        public void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=ZA-MB-DEV-00896\SQLEXPRESS;Initial Catalog=CMR_FoodParcel_DB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            DataTable dt = new DataTable();
            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("SELECT * FROM CMR_FoodParcelRegistrations");
            myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {
                idTxt.InnerText = (myReader["IdNumber"].ToString());
                nameTxt.InnerText = (myReader["FirstName"].ToString());
                surnameTxt.InnerText = (myReader["Surname"].ToString());
                cellTxt.InnerText = (myReader["CellNumber"].ToString());
                emailTxt.InnerText = (myReader["Email"].ToString());
                addressTxt.InnerText = (myReader["ResidentialAddress"].ToString());

            }
            con.Close();
        }



        protected void SupplyParcelButton(object sender, EventArgs e)
        {
            date.InnerText = DateTime.Now.ToShortDateString();
            SupplyButton1.Enabled = false;
            SupplyButton1.ForeColor = System.Drawing.Color.Red;
        }

        protected void SupplyParcelButtonTwo(object sender, EventArgs e)
        {

            dateTxt.InnerText = DateTime.Now.ToShortDateString();
            SupplyButton2.Enabled = false;
            SupplyButton2.ForeColor = System.Drawing.Color.Red;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }


    }
}