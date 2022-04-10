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
    public partial class caterermenumanagement : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;
        int id;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ItemId"] == null)
            {
                Response.Redirect("caterermenumanagement.aspx");
            }

            

        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }

            else
            {
                string cookies = "";

                id = Convert.ToInt32(Request.QueryString["ItemId"].ToString());
                DataTable dt = getData("select * from Items where ItemId = " + id);

                foreach (DataRow dr in dt.Rows)
                {
                    cookies = dr["Name"].ToString() + "-" +
                              dr["Description"].ToString() + "-" +
                              dr["Price"].ToString() + "-" +
                              dr["image"].ToString();

                }

                
            }
        }

        private DataTable getData(String query)
        {
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;
        }

        protected void btnViewMyOrder_Click(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }
            else
            {
                Response.Redirect("ViewOrder.aspx");
            }
        }

    }
}