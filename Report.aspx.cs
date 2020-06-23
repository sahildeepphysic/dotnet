using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuggestIndia
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Label1.Visible = false;
                HyperLink1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           HttpPostedFile postedFile= FileUpload1.PostedFile;
           String fileName = Path.GetFileName(postedFile.FileName);
            String fileExt = Path.GetExtension(fileName);
            int fileSize = postedFile.ContentLength;

            if (fileExt.ToLower() == ".jpg" || fileExt.ToLower() == ".gif"
                || fileExt.ToLower() == ".png" || fileExt.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader bR = new BinaryReader(stream);
                byte[] bytes=bR.ReadBytes((int)stream.Length);

                string cs = ConfigurationManager.ConnectionStrings["SuggestIndiaConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("spuploadImages",con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter paramName = new SqlParameter(){
                        ParameterName = "@Name",
                        Value = fileName
                };
                    cmd.Parameters.Add(paramName);

                    SqlParameter paramSize = new SqlParameter()
                    {
                        ParameterName = "@Size",
                        Value = fileSize
                    };
                    cmd.Parameters.Add(paramSize);

                    SqlParameter paramImageData = new SqlParameter()
                    {
                        ParameterName = "@ImageData",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramImageData);
                    SqlParameter paramParagraph = new SqlParameter()
                    {
                        ParameterName = "@para",
                        Value = TextBox1.Text
                    };
                    cmd.Parameters.Add(paramParagraph);
                    SqlParameter paramNewId = new SqlParameter()
                    {
                        ParameterName = "@Newid",
                        Value = -1,
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(paramNewId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Text = "Upload Successful";
                    HyperLink1.Visible = true;

                int id=0;

                    cmd = new SqlCommand("SELECT [ID] FROM[SuggestIndia].[dbo].[ProblemData] where[Name] = '"+fileName+"'; ", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read()) {
                    id=(int)rd.GetValue(0);
                }

                cmd = new SqlCommand("INSERT INTO [SuggestIndia].[dbo].[areaLikeCounter] ([ID],[Area],[likeCounter]) VALUES (" + id + ",'" + TextBox2.Text.ToLower() + "'," + 0 + ")", con); ;
                rd.Close();
                cmd.ExecuteNonQuery();

                con.Close();
                // HyperLink1.NavigateUrl = "~/Main.aspx?" + id.ToString();
                Response.Redirect("Main.aspx?"+id.ToString());

            }
            else {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
                Label1.Visible = false;
            }
        }
    }
}