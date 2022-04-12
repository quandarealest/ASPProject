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
    public partial class CustomerOrder : System.Web.UI.Page
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


                SqlDataAdapter da = new SqlDataAdapter("Select * from Customer_Order, Order_Packages, Packages where Customer_Order.OrderId = Order_Packages.OrderId and  Order_Packages.PackageId = Packages.PackageId  and Customer_Order.UserId='" + Session["userId"].ToString().Trim() + "'", con);
                DataSet ds = new DataSet();

                da.Fill(ds);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblMsg.Text = "You haven't made any purchases yet, please go to menu and select items you wish to purchase";
                    lblOrderMoreFood.Text = "Order Food";
                }
                else
                {
                    lblMsg.Text = "You have ordered the following items: ";
                    lblOrderMoreFood.Text = "Order More Food";
                    rptOrder.DataSource = ds;
                    rptOrder.DataBind();
                }


            }
        }

    }
}