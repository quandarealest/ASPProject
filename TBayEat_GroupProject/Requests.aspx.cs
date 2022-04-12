using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBayEat_GroupProject
{
    public partial class Requests : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            if (!IsPostBack)
                GridView1.DataBind();
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            using (SqlConnection myconnection = new SqlConnection(connectionString))
            {
                SqlCommand myUpdateCommad = new SqlCommand("CatererApproval", myconnection);
                myUpdateCommad.CommandType = CommandType.StoredProcedure;
                myUpdateCommad.Parameters.Add("@userid", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[1].Text;
                myconnection.Open();
                myUpdateCommad.ExecuteNonQuery();
                GridView1.DataBind();

            }
        }

        protected void btnReject_Click(object sender, EventArgs e)
        {
            using (SqlConnection myconnection = new SqlConnection(connectionString))
            {
                SqlCommand myUpdateCommad = new SqlCommand("CatererRejection", myconnection);
                myUpdateCommad.CommandType = CommandType.StoredProcedure;
                myUpdateCommad.Parameters.Add("@userid", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[1].Text;
                myconnection.Open();
                myUpdateCommad.ExecuteNonQuery();
                GridView1.DataBind();

            }
        }
    }
}