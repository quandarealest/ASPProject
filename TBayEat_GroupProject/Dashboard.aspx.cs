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
    public partial class Dashboard : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            /*using (SqlConnection myconnection = new SqlConnection(connectionString))
            
                SqlConnection myconnection;
                SqlCommand newCountQuery;
                string countQuery = "Select Count(OrderId) From dbo.Order";
                myconnection = new SqlConnection(connectionString);
                 SqlCommand getAllOrder = new SqlCommand(countQuery, myconnection);
                try
                {
                    myconnection.Open();
                    newCountQuery = new SqlCommand(countQuery, myconnection);
                    Int32 orderCount= Convert.ToInt32(newCountQuery.ExecuteScalar());
                    
                    
                }

                catch {                     
                    myconnection.Close();
                    lblNumOrders.Text = orderCount.T
                */

            SqlConnection myconnection;
            SqlCommand newCountQuery;
            string countOrderQuery = "SELECT COUNT(*) FROM Orders";
            myconnection = new SqlConnection(connectionString);
            try
            {
                myconnection.Open();
                newCountQuery = new SqlCommand(countOrderQuery, myconnection);
                Int32 NumOrders = Convert.ToInt32(newCountQuery.ExecuteScalar());
                newCountQuery.Dispose();
                myconnection.Close();
                lblNumOrders.Text = NumOrders.ToString();
            }
            catch (Exception er)
            {

            }            
            string totalCompletedOrderQuery = "select count(*) from Orders where Status like 'Completed'";
            try
            {
                myconnection.Open();
                newCountQuery = new SqlCommand(totalCompletedOrderQuery, myconnection);
                Int32 NumOrders = Convert.ToInt32(newCountQuery.ExecuteScalar());
                newCountQuery.Dispose();
                myconnection.Close();
                lblCompletedOrders.Text = NumOrders.ToString();
            }
            catch (Exception er)
            {

            }

            string totalInprogressOrderQuery = "select count(*) from Orders where Status like 'In progress'";
            try
            {
                myconnection.Open();
                newCountQuery = new SqlCommand(totalInprogressOrderQuery, myconnection);
                Int32 NumOrders = Convert.ToInt32(newCountQuery.ExecuteScalar());
                newCountQuery.Dispose();
                myconnection.Close();
                lblInprogressOrders.Text = NumOrders.ToString();
            }
            catch (Exception er)
            {

            }
        }

    }
}