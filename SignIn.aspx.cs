using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuggestIndia
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text=="admin" && TextBox2.Text=="admin") {
                Response.Redirect("admin.aspx");
            }
            else { 
            string connetionString;
            SqlConnection con;
            connetionString = @"Data Source=LAPTOP-QG8K4R3C\SQLEXPRESS;Initial Catalog=Student;Integrated Security=True;";
            con = new SqlConnection(connetionString);
            con.Open();
            SqlDataReader rdr;
            string commandText = "SELECT count(*) FROM [SuggestIndia].[dbo].[Details] WHERE [userName]='" + TextBox1.Text + "'AND [upassWord]='" + TextBox2.Text+"'";
            SqlCommand cmd = new SqlCommand(commandText, con);
            Session["name"] = TextBox1.Text;
            try { rdr = cmd.ExecuteReader();
                rdr.Read();

                if (rdr.GetValue(0).ToString() == "1")
                {
                    //Response.Redirect("profile.aspx?name=" + TextBox1.Text) ;
                    Response.Cookies["name"].Value = TextBox1.Text;
                    Response.Cookies["name"].Expires = DateTime.Now.AddMinutes(2);
                    Response.Write("<script>alert('Cookie is created')</script>");
                    Response.Redirect("profile.aspx");
                    
                }
                else
                {   
                    Response.Redirect("SignIn.aspx");
                }
            } catch (Exception) { }
                //
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        
    }
}