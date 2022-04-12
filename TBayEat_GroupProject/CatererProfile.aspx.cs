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
    public partial class CatererProfile : System.Web.UI.Page
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
                        cmd.Parameters.AddWithValue("@Image", "images/" + custimage);


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


        
        void updateRestaurantPersonalDetails()
        {
            SqlConnection con = new SqlConnection(strcon);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("update Caterer_Details set Description=@Description, PhoneNumber=@phn,Address=@add , JoiningDate=@join WHERE UserId='" + Session["userId"].ToString().Trim() + "'", con);

            
            cmd.Parameters.AddWithValue("@Description", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@phn", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@add", TextBox8.Text.Trim());
            cmd.Parameters.AddWithValue("@join", TextBox9.Text.Trim());


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
                SqlCommand cmd1 = new SqlCommand("SELECT * from Caterer_Details where UserId='" + Session["userId"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                DataTable dt1 = new DataTable();
                da.Fill(dt);
                da1.Fill(dt1);

                TextBox1.Text = dt.Rows[0]["userName"].ToString();
                TextBox2.Text = dt.Rows[0]["DOB"].ToString();
                TextBox3.Text = dt.Rows[0]["PhoneNumber"].ToString();
                TextBox4.Text = dt.Rows[0]["Email"].ToString();
                TextBox5.Text = dt.Rows[0]["Password"].ToString();
                image2.ImageUrl = dt.Rows[0]["Image"].ToString();


                image1.ImageUrl = dt1.Rows[0]["Image"].ToString();
                TextBox6.Text = dt1.Rows[0]["Description"].ToString();
                TextBox7.Text = dt1.Rows[0]["PhoneNumber"].ToString();
                TextBox8.Text = dt1.Rows[0]["Address"].ToString();
                TextBox9.Text = dt1.Rows[0]["JoiningDate"].ToString();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void Button6_Click1(object sender, EventArgs e)
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

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (Session["userid"].ToString() == "" || Session["userid"] == null)

            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                updateRestaurantPersonalDetails();

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatererProfile.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatererMenuManagement.aspx");

        }
    }

}