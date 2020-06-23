using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuggestIndia
{
    public partial class suggestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("emailid", "password");
                MailMessage mail = new MailMessage("suggestindia90890@gmail.com", TextBox1.Text, TextBox2.Text, "hello");
                smtp.Send(mail);
            }
            catch (Exception ex) {

            }
        }
    }
}