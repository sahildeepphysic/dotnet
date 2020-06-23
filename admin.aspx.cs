using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SuggestIndia
{
    public partial class admin : System.Web.UI.Page
    {

        SqlConnection sqlCon = new SqlConnection(@"Data Source = LAPTOP-QG8K4R3C\SQLEXPRESS;Initial Catalog = SuggestIndia; Integrated Security = True;");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnDelete.Enabled = false;
                FillGridView();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            hfContactID.Value = "";
            Name.Text = Size.Text = ImageData.ImageUrl =Problem.Text= "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("CreateOrUpdate1", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@ID", (hfContactID.Value == "" ? 0 : Convert.ToInt32(hfContactID.Value)));
            sqlCmd.Parameters.AddWithValue("@Name", Name.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Size", Size.Text.Trim());
            //sqlCmd.Parameters.AddWithValue("@ImageData", ImageData.ImageUrl);
            sqlCmd.Parameters.AddWithValue("@para", Problem.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string contactID = hfContactID.Value;
            Clear();
            if (ID == "")
                lblSuccessMessage.Text = "Saved Successfully";
            else
                lblSuccessMessage.Text = "Updated Successfully";
            FillGridView();
        }

        void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("ViewAll", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            gvData.DataSource = dtbl;
            gvData.DataBind();

        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("ViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@ID", ID);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfContactID.Value = ID.ToString();
            Name.Text = dtbl.Rows[0]["Name"].ToString();
            Size.Text = dtbl.Rows[0]["Size"].ToString();
            byte[] bytes = (byte[])dtbl.Rows[0]["ImageData"];
            string strBase64 = Convert.ToBase64String(bytes);
            ImageData.ImageUrl = "data:Image/png;base64," + strBase64;
            //ImageData.Text = dtbl.Rows[0]["ImageData"].ToString();
            //ImageData.Text = dtbl.Rows[0]["ImageData"];
            //string v = dtbl.Rows[0]["ImageData"].ToString();
            //byte[] b=System.IO.File.ReadAllBytes(v);
            //string imreBase64Data = Convert.ToBase64String(b);
            //string imgDataURL = string.Format("data:image/png;base64,{0}", imreBase64Data);
            //ImageData.Text = imgDataURL;
            Problem.Text = dtbl.Rows[0]["para"].ToString();
            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }

       

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("DeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@ID", Convert.ToInt32(hfContactID.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            FillGridView();
            lblSuccessMessage.Text = "Deleted Successfully";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}