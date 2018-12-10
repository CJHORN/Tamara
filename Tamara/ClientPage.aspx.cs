using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tamara
{
    public partial class ClientPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Clients"] != null)
            {
                Response.Redirect("ClientInformation.aspx");
            }
        }

        public void ButtonRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=ZA-MB-DEV-00896\SQLEXPRESS;Initial Catalog=CMR_FoodParcel_DB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlCommand cmd = new SqlCommand("RegisteredClientsDetails", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("IdNumber", TextId.Text);
            cmd.Parameters.AddWithValue("FirstName", TextName.Text);
            cmd.Parameters.AddWithValue("Surname", TextSurname.Text);
            cmd.Parameters.AddWithValue("CellNumber", TextCell.Text);
            cmd.Parameters.AddWithValue("Email", TextEmail.Text);
            cmd.Parameters.AddWithValue("ResidentialAddress", TextAddress.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            Response.Redirect("ClientInformation.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientInformation.aspx");
        }

        protected void TextBox_Id(object sender, EventArgs e)
        {
            
        }

        protected void TextBox_Name(object sender, EventArgs e)
        {

        }

        protected void TextBox_Surname(object sender, EventArgs e)
        {

        }

        protected void TextBox_CellNr(object sender, EventArgs e)
        {

        }

        protected void TextBox_Email(object sender, EventArgs e)
        {

        }

        protected void TextBox_Address(object sender, EventArgs e)
        {

        }
    }
}