using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuggestIndia
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection con;
            connetionString = @"Data Source=LAPTOP-QG8K4R3C\SQLEXPRESS;Initial Catalog=SuggestIndia;Integrated Security=True;";
            con = new SqlConnection(connetionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userName", TextBox6.Text);
            cmd.Parameters.AddWithValue("uName", TextBox1.Text);
            cmd.Parameters.AddWithValue("uMail", TextBox7.Text);
            cmd.Parameters.AddWithValue("upassWord", TextBox2.Text);
            cmd.Parameters.AddWithValue("ageDate", TextBox3.Text);
            cmd.Parameters.AddWithValue("City", TextBox4.Text);
            cmd.Parameters.AddWithValue("Contact", TextBox5.Text);
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                Response.Redirect("SignIn.aspx");
            }
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {}

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}
