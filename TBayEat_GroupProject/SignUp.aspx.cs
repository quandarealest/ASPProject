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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            String userName = (CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName") as TextBox).Text;
            String password = (CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Password") as TextBox).Text;
            String email = (CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email") as TextBox).Text;
            String phone = (CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Phone") as TextBox).Text;
            String role = (CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("isOwner") as CheckBox).Checked ? "Caterer" : "Customer";
            int userId = new Random().Next(20, 1000);

            string strConnection = ConfigurationManager.ConnectionStrings["TBayEatConnection"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(strConnection);
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "insert into dbo.NewMemberShip(UserId, UserName, Password, Email, PhoneNumber, Role) values (" + userId+ ", '" + userName + "', '" + password + "', '" + email + "', '" + phone + "', '" + role + "')";
            //SqlCommand command = new SqlCommand(sql, sqlConnection);
            sqlConnection.Open();
            adapter.InsertCommand = new SqlCommand(sql, sqlConnection);
            adapter.InsertCommand.ExecuteNonQuery();

            //command.Dispose();
            sqlConnection.Close();
        }

        protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }
    }
}