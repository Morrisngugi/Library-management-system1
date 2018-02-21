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
    public partial class frmEmployees : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmLogin.aspx");
        }

        protected void cmdEmployeeCancel_Click(object sender, EventArgs e)
        {
            this.txtFirstname.Text = "";
            this.txtMiddlename.Text = "";
            this.txtLastname.Text = "";
            this.txtEmail.Text = "";
            this.txtContact.Text = "";
            this.txtEmployee.Text = "";
            this.DropDownGender.Text = "";
            this.DropDownDesignation.Text = "";
            this.txtPassword.Text = "";
            this.txtPasswordConfirm.Text = "";

        }

        protected void cmdEmployeeSafe_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "EXEC Employee_Insert '"+txtFirstname.Text+"', '"+txtMiddlename.Text+"', '"+txtLastname.Text+"', '"+txtEmail.Text+"', '"+txtContact.Text+"', '"+txtEmployee.Text+"', '"+DropDownGender.Text+"' ,'"+DropDownDesignation.Text+"' ,'"+txtPassword.Text+"' ,'"+txtPasswordConfirm.Text+"', '"+txtstatus.Text+"' ";
                db.openConnection();
                db.comm.CommandText = sql;
                db.comm.ExecuteNonQuery();

                MessageBox.Show("Thankyou for Registerig. Please log In to your Account after 30 Minutes...");
                

                //lblMessage.Visible = true;
                //lblMessage.Text = "success!";
                 
                //Response.Redirect("frmLogin.aspx");

                this.txtFirstname.Text = "";
                this.txtMiddlename.Text = "";
                this.txtLastname.Text = "";
                this.txtEmail.Text = "";
                this.txtContact.Text = "";
                this.txtEmployee.Text = "";
                this.DropDownGender.Text = "";
                this.DropDownDesignation.Text = "";
                this.txtPassword.Text = "";
                this.txtPasswordConfirm.Text = "";
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {

            }

        }

        
    }
}