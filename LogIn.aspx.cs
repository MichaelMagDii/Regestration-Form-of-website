using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=MICHAEL;Initial Catalog=SignUpProj;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "FullData";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.Add("@FirstName", (TextFirstName.Text).ToString());
        cmd.Parameters.Add("@LastName", (TextLastName.Text).ToString());
        cmd.Parameters.Add("UserName", (TextUserName.Text).ToString());
        cmd.Parameters.Add("@Password", (TextPassword.Text).ToString());
        cmd.Parameters.Add("@Gender", (ListOfGender.SelectedItem.Value.ToString()));
        cmd.Parameters.Add("@Email", (TextEmail.Text).ToString());
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();     

        }
        catch(SqlException ex)
        {
            string ErrorMSG = "Error At Registration User";
            ErrorMSG += ex.Message;
            throw new Exception(ErrorMSG);
        }
        finally
        {
            con.Close();
        }
    }
}