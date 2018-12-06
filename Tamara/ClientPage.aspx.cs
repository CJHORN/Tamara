using System;
using System.Collections.Generic;
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
           //var id =  Session["Clients"] =TextId.Text;
           // Session["Clients"] =TextName.Text;
           // Session["Clients"] =TextSurname.Text;
           // Session["Clients"] =TextCell.Text;
           // Session["Clients"] =TextEmail.Text;
           // Session["Clients"] = TextAddress.Text;
             

           // DatabaseActions dbActions = new DatabaseActions();
           // dbActions.BtnAddRegistration();
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