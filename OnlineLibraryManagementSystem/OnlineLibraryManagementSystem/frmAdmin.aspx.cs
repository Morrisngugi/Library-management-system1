using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLibraryManagementSystem
{
    public partial class frmAdmin : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

            //lblUserName.Text = Session["userName"].ToString();
           // lblUserName.ToolTip = Session["userName"].ToString() + ", Admin [User]";

        }

        protected void lnkLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmLogin.aspx");
        }

        protected void lnkAddUser_Click(object sender, EventArgs e)
        {
            
            panelAddUserWindow.Visible = true;
            lnkAddUser.CssClass = "LinkSelected";

            panelAllUsers.Visible = false;
            lnkListUsers.CssClass = "";
        }

        protected void cmdSave_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "EXEC Admin_Insert1 '" + txtFirstName.Text.ToString() + "', '" + txtMiddleName.Text.ToString() + "', '" + txtLastName.Text.ToString() + "',  '" + txtEmail.Text.ToString() + "', '" + txtPhone.Text.ToString() + "', '" + GenderDropDown.Text.ToString() + "',  '" + txtUserName.Text.ToString() + "','" + txtPassword.Text.ToString() + "','" + txtConfPassword.Text.ToString() + "', '"+txtstatus.Text.ToString()+"'";
                db.openConnection();
                db.comm.CommandText = sql; db.comm.ExecuteNonQuery();
               // MessageBox.Show("User added successfully");
                lblMessage.Visible = true;
                lblMessage.Text = "User added successfully";

                this.txtFirstName.Text = "";
                this.txtMiddleName.Text = "";
                this.txtLastName.Text = "";
                this.txtEmail.Text = "";
                this.txtPhone.Text = "";
                this.GenderDropDown.Text = "";
                this.txtUserName.Text = "";
                this.txtPassword.Text = "";
                this.txtConfPassword.Text="";
            }
            catch (Exception es)
            {
                MessageBox.Show(es.Message);
            }
            finally
            {

            }
        }

        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            this.txtFirstName.Text = "";
            this.txtMiddleName.Text = "";
            this.txtLastName.Text = "";
            this.txtEmail.Text = "";
            this.txtPhone.Text = "";
            this.GenderDropDown.Text = "";
            this.txtUserName.Text = "";
            this.txtPassword.Text = "";
            this.txtConfPassword.Text = "";

        }

        protected void lnkListUsers_Click(object sender, EventArgs e)
        {
            panelAddUserWindow.Visible = false; lnkAddUser.CssClass = "";


            lnkListUsers.CssClass = "LinkSelected";
            getAllUsers();
            panelAllUsers.Visible = true;
        }
        public void getAllUsers()
        {
            try
            {
                DataSet emptyDS = new DataSet();
                emptyDS.Reset();
                gvAllUsers.DataSource = emptyDS.Tables["empty"];


                DataSet ds = new DataSet();
                db.openConnection();
                string sql = "EXEC SelectAllUsers";
                db.adapter(sql).Fill(ds);
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                db.comm.Dispose();
                db.conn.Dispose();
                if(ds.Tables[0].Rows.Count == 0)
                {
                    gvAllUsers.Visible = false;
                }
                else
                {
                    gvAllUsers.Visible = true;
                    gvAllUsers.DataSource = ds.Tables[0];
                    gvAllUsers.DataBind();
                }
            }
            catch(SqlException es)
            {
                MessageBox.Show(es.Message);
            }
            finally
            {
                db.conn.Close();
            }
        }

        protected void LinkUpdateUsers_Click(object sender, EventArgs e)
        {
            panelAddUserWindow.Visible = false;
            lnkAddUser.CssClass = "";

            panelAllUsers.Visible = false;
            lnkListUsers.CssClass = "";

            panelUpdateUserWindow.Visible = true;
            LnkUpdateUsers.CssClass = "LinkSelected";

            panelUpdateUsers.Visible = false;
        }

        protected void cmdSearch_Click(object sender, EventArgs e)
        {
            string tempSearchCriteria = "";
            if (dlSearchCriteria.SelectedValue == "First Name")
            {
                tempSearchCriteria = "first_name";
            }
            else if (dlSearchCriteria.SelectedValue== "Last Name")
            {
                tempSearchCriteria = "last_name";
            }

            if(search_populateUserDetails (tempSearchCriteria, txtSearch.Text.ToString()) == true)
            {
                lblResult1.Visible = false;
                lnkResult1.Visible = false;
                panelUpdateUsers.Visible = true;
            }
            else
            {
                lblResult1.Visible = true;
                lnkResult1.Visible = true;
                lblResult1.Text = "No record matches your search ["+ txtSearch.Text.ToString() +"]";
            }
        }
        public bool search_populateUserDetails(string criteria, string searchTerm)
        {
            bool flag = false;
            string sql = "exec User_select_user '" + criteria + "', '" + searchTerm + "'";

            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    txtResultUF.Text = db.reader["FName"].ToString();
                    txtResultUM.Text = db.reader["MName"].ToString();
                    txtResultUL.Text = db.reader["LName"].ToString();
                    txtResultUE.Text = db.reader["Email"].ToString();
                    txtResultUP.Text = db.reader["PNumber"].ToString();
                    txtResultUG.Text = db.reader["Gender"].ToString();
                    txtResultUD.Text = db.reader["Department"].ToString();
                    txtResultUDI.Text = db.reader["DepartmentD"].ToString();
                    txtResultUU.Text = db.reader["UName"].ToString();
                    txtresultUPA.Text = db.reader["Password"].ToString();

                    flag = true;
                }
                else
                {
                    flag = false;
                }
            }
            catch(SqlException es)
            {
                MessageBox.Show(es.Message);
            }
            finally
            {
                db.conn.Close();
            }
            return flag;
        }

        protected void lnkResult1_Click(object sender, EventArgs e)
        {
            panelAddUserWindow.Visible = true;
            lnkAddUser.CssClass = "LinkSelected";

            panelAllUsers.Visible = false;
            lnkListUsers.CssClass = "";

            panelUpdateUserWindow.Visible = false;
            LnkUpdateUsers.CssClass = "";

            panelUpdateUsers.Visible = false;

        }
        
    }
}
