using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace TBayEat_GroupProject
{
    public partial class HomePage : System.Web.UI.Page
    {
        private String userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] !=null )
            {
                userId = Session["userId"].ToString();
            }

            string strConnection = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(strConnection);
            String sqlQuery = "select * from dbo.Items";
            SqlCommand command = new SqlCommand(sqlQuery, sqlConnection);
            sqlConnection.Open();

            DataLoadRepeater.DataSource = command.ExecuteReader();
            DataLoadRepeater.DataBind();
            sqlConnection.Close();
        }
    }
}