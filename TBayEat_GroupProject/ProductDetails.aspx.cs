using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.ModelBinding;

namespace TBayEat_GroupProject
{

    public class ProductInfo
    {
        public string Name { get; set; }
        public string Itemid { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public string Price { get; set; }
        
        public ProductInfo(string itemId, string name, string description, string image, string price)
        {
            Name = name;
            Itemid = itemId;
            Description = description;
            Image = image;
            Price = price;
        }
    }
    public partial class ProductDetails : System.Web.UI.Page
    {
        private String productId;
        private String userId;
        public ProductInfo productInformation;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["productID"]!=null)
            {
                productId = Request.QueryString["productID"];
                if (Session["userId"]!=null)
                {
                    userId = Session["userId"].ToString();
                }


            } else
            {
                Response.Redirect("HomePage.aspx");
            }

        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public ProductInfo productDetail_GetItem([QueryString("productID")] int? id)
        {
            if (id.HasValue && id > 0)
            {
                string strConnection = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(strConnection);
                String SQLQuery = "select * from dbo.Items where ItemId="+ id;
                SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
                SqlDataReader dr;
                sqlConnection.Open();
                dr = command.ExecuteReader();
                while(dr.Read())
                {
                    productInformation = new ProductInfo(dr["ItemId"].ToString(), dr["Name"].ToString(), dr["Description"].ToString(), dr["Image"].ToString(), dr["Price"].ToString());
                }
                dr.Close();
                return productInformation;
            }
            else
            {
                return null;
            }
        }
    }
}