using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuggestIndia
{
    public partial class Problem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       // protected void problemCounter(object sender, EventArgs e)
        //{
            // string connetionString = @"Data Source=LAPTOP-QG8K4R3C\SQLEXPRESS;Initial Catalog=SuggestIndia;Integrated Security=True;";
            //SqlConnection con = new SqlConnection(connetionString);
            //SqlCommand cmd = new SqlCommand("UPDATE [dbo].[areaLikeCounter] SET [likeCounter] = ([likeCounter] + 1) WHERE[ID] = (SELECT [ID]  FROM [SuggestIndia].[dbo].[ProblemData] WHERE [Name] ='"++"');", con);
            //cmd.ExecuteNonQuery();
            //con.Close();
          //  Response.Redirect("problem.aspx");

        //}
    }
}