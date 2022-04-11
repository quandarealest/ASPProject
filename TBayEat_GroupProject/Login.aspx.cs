using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace TBayEat_GroupProject
{
    public partial class Login : System.Web.UI.Page
    {
        private string UserId = "0";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                ViewState["LoginErrors"] = 0;
        }

        protected void LoginAuthentication(object sender, AuthenticateEventArgs e)
        {
            if (ValidationFunction(loginForm.UserName, loginForm.Password))
            {
                e.Authenticated = true;
<<<<<<< Updated upstream
                
            } else
=======

            }
            else
>>>>>>> Stashed changes
            {
                e.Authenticated = false;
            }
        }

        private bool ValidationFunction(string UserName, string Password)
        {
            bool LoginFlag = false;
            string strConnection = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(strConnection);
            String SQLQuery = "select UserId, UserName, Password from dbo.NewMemberShip";
            SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
            SqlDataReader dr;
            sqlConnection.Open();
            dr = command.ExecuteReader();
            while (dr.Read())
            {
                if ((UserName == dr["UserName"].ToString()) & (Password == dr["Password"].ToString()))
                {
                    LoginFlag = true;
                    UserId = dr["UserId"].ToString();
                }
            }
            dr.Close();
            return LoginFlag;
        }

        protected void loginForm_LoggedIn(object sender, EventArgs e)
        {
            if (UserId != "0")
            {
                Session["userId"] = UserId;
            }
            Response.Redirect("HomePage.aspx");
        }
    }
}