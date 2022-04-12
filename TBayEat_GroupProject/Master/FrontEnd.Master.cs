using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace TBayEat_GroupProject.Master
{
    public partial class FrontEnd : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                string strConnection = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(strConnection);
                String SQLQuery = "select * from dbo.NewMemberShip where UserId="+Session["userId"];
                SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
                sqlConnection.Open();
                SqlDataReader dr= command.ExecuteReader();
                while(dr.Read())
                {
                    if (dr["Approval"].ToString() == "1") {
                        loginLink.InnerText = dr["UserName"].ToString();
                        loginLink.HRef = "~/CatererProfile.aspx";
                        signUpLink.InnerText = "Log Out";
                        signUpLink.HRef = "~/Login.aspx";
                    }
                    else
                    {
                        loginLink.InnerText = dr["UserName"].ToString();
                        loginLink.HRef = "~/CustomerProfile.aspx";
                        signUpLink.InnerText = "Log Out";
                        signUpLink.HRef = "~/Login.aspx";

                    }
                }

                
                    if (dr["Role"].ToString() == "Admin")
                    {
                        loginLink.InnerText = dr["UserName"].ToString();
                        loginLink.HRef = "~/CatererProfile.aspx";
                        signUpLink.InnerText = "Log Out";
                        signUpLink.HRef = "~/Login.aspx";
                    }
                    sqlConnection.Close();
            }
        }
    }
}