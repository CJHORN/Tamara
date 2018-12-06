using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tamara
{
    public partial class ClientInformation : System.Web.UI.Page
    {
        class RegisteredInfo
        {
            public string id { get; set; }
            public string name { get; set; }
            public string surname { get; set; }
            public string cell { get; set; }
            public string email { get; set; }
            public string address { get; set; }
        }
        


        public void Page_Load(object sender, EventArgs e)
        {


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