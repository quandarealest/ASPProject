using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace TBayEat_GroupProject
{
    public partial class CatererMenuManagement : System.Web.UI.Page
    {
       
        string strcon = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"].ToString() == "" || Session["userid"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");

                Response.Redirect("Login.aspx");
            }
            else
            {


                SqlConnection con = new SqlConnection(strcon);


                SqlDataAdapter da = new SqlDataAdapter("Select * from Items where ItemId in ( Select ItemId from Package_Item where PackageItemId in(Select PackageId from Caterer_Package where UserId='" + Session["userId"].ToString().Trim() + "'))", con);


                DataSet ds = new DataSet();

                da.Fill(ds);
                rpt.DataSource = ds;
                rpt.DataBind();

                SqlDataAdapter da1= new SqlDataAdapter("Select * from Packages where PackageId in ( Select PackageId from Caterer_Package where UserId='" + Session["userId"].ToString().Trim() + "')", con);


                DataSet ds1 = new DataSet();

                da1.Fill(ds1);
                rpt1.DataSource = ds1;
                rpt1.DataBind();
            }

        }


    
    }
}