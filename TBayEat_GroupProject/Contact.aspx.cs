using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace TBayEat_GroupProject
{
    public partial class Contact : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(txtto.Text);
                mail.From = new MailAddress("bookxchange2022ict@gmail.com");
                mail.Subject = txtsub.Text;
                mail.Body = "Thankyou for Contacting Us. we will respond to you in 3 business days";
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("bookxchange2022ict@gmail.com", "Sindhu@1991");
                smtp.EnableSsl = true;

                smtp.Send(mail);
                txtto.Text = String.Empty;
                txtsub.Text = String.Empty;
                lblmsg.Text = "Email Successfully Send.Please check your email for more details.......";

            }
            catch (Exception ex)
            {

                lblmsg.Text = "Mail Not Send .......";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}

