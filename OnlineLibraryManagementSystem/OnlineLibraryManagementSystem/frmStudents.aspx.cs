using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace OnlineLibraryManagementSystem
{
    public partial class frmStudents : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmLogin.aspx");
        }

        protected void cmdStdCancel_Click(object sender, EventArgs e)
        {
            this.txtFname.Text = "";
            this.txtMname.Text = "";
            this.txtLname.Text = "";
            this.txtAdm.Text = "";
            this.DropDownGender.Text = "";
            this.DropDownClass.Text = "";
            this.txtDOA.Text = "";
            this.txtExpiry.Text = "";
            this.txtpass.Text = "";
            this.txtConfPass.Text = "";

        }

        protected void cmdStdSafe_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "EXEC Student_Insert '" + txtFname.Text.ToString() + "', '" + txtMname.Text.ToString() + "', '" + txtLname.Text.ToString() + "', '" + txtAdm.Text.ToString() + "', '" + DropDownGender.Text.ToString() + "', '" + DropDownClass.Text.ToString() + "', '" + txtDOA.Text.ToString() + "', '" + txtExpiry.Text.ToString() + "', '" + txtpass.Text.ToString() + "', '" + txtConfPass.Text.ToString() + "', '"+txtstatus.Text.ToString()+"'";
                db.openConnection();
                db.comm.CommandText = sql;
                db.comm.ExecuteNonQuery();

                lblMessage.Visible = true;
                lblMessage.Text = "Student added successfully";

                this.txtFname.Text = "";
                this.txtMname.Text = "";
                this.txtLname.Text = "";
                this.txtAdm.Text = "";
                this.DropDownGender.Text = "";
                this.DropDownClass.Text = "";
                this.txtDOA.Text = "";
                this.txtExpiry.Text = "";
                this.txtpass.Text = "";
                this.txtConfPass.Text = "";               
            }
            catch(Exception es)
            {
                MessageBox.Show(es.Message);
            }
            finally
            {
                db.conn.Close();
            }
        }
    }
}