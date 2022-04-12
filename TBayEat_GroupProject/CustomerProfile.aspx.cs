using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace TBayEat_GroupProject
{
    public partial class CustomerProfile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;

         

        protected void Page_Load(object sender, EventArgs e)
        {


            try
            {
                if (Session["userid"].ToString() == "" || Session["userid"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");

                    Response.Redirect("Login.aspx");
                }
                else
                {


                    if (!Page.IsPostBack)
                    {
                        getUserPersonalDetails();
                    }

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Login.aspx");
            }
        }
        void updateUserPersonalDetails()
        {
            SqlConnection con = new SqlConnection(strcon);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            if (FileUpload1.PostedFile != null)
            {
                try
                {

                    string custimage = Path.GetFileName(FileUpload1.PostedFile.FileName);

                    SqlCommand cmd = new SqlCommand("Update NewMemberShip set UserName=@UserName, DOB=@DOB,PhoneNumber=@PhoneNumber , Email=@Email,Password=@Password,Image=@Image WHERE UserId='" + Session["userId"].ToString().Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@PhoneNumber", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@Image", "images/" +custimage);


                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    if (result > 0)
                    {

                        Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                        getUserPersonalDetails();
                    }
                    else
                    {
                        Response.Write("<script>alert('Invaid entry');</script>");
                    }


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Invaid entry');</script>");

                }
            }
        }





        void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("SELECT * from NewMemberShip where UserId='" + Session["userId"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["userName"].ToString();
                TextBox2.Text = dt.Rows[0]["DOB"].ToString();
                TextBox3.Text = dt.Rows[0]["PhoneNumber"].ToString();
                TextBox4.Text = dt.Rows[0]["Email"].ToString();
                TextBox5.Text = dt.Rows[0]["Password"].ToString();
                image1.ImageUrl=dt.Rows[0]["Image"].ToString();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Session["userid"].ToString() == "" || Session["userid"] == null)

            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                updateUserPersonalDetails();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerOrder.aspx");
        }
    }
}

