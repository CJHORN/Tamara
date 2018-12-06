using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tamara
{
    public partial class LoginPage : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Clients"] != null)
            {
                Response.Redirect("ClientPage.aspx");
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("ClientPage.aspx");
            
        }

        protected void Unnamed1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}                                                                                                                                                                                                                         