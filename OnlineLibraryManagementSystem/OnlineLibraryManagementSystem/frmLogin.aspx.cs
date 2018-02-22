using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace OnlineLibraryManagementSystem
{
    public partial class frmLogin : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            Login();
        }
        //Login Function
        //        public void Login()
        //        {
        //            string userName = txtUserName.Text.ToString();
        //            string userPass = txtPassword.Text.ToString();

        //            string sqlString = "Exec userLogin'" + userName + "', '" + userPass + "'";
        //            try
        //            {
        //                db.openConnection();
        //                db.comm.CommandText = sqlString;
        //                db.reader = db.comm.ExecuteReader();
        //                if (db.reader.Read())
        //                {
        //                    Session["userID"] = db.reader["userID"].ToString();
        //                    Session["userName"] = db.reader["first_name"].ToString();
        //                    Session["departmentID"] = db.reader["departmentID"].ToString();


        //                    if (int.Parse(Session["departmentID"].ToString()) == 1) // Credit Analyst
        //                    {
        //                        Response.Redirect("frmCreditAnalyst.aspx");
        //                    }
        //                    else if (int.Parse(Session["departmentID"].ToString()) == 2)// Supervisor
        //                    {
        //                        Response.Redirect("Supervisor.aspx");
        //                    }
        //                    else if (int.Parse(Session["departmentID"].ToString()) == 3)// CSR
        //                    {
        //                        Response.Redirect("frmCSR.aspx");
        //                    }
        //                    else if (int.Parse(Session["departmentID"].ToString()) == 6) // Credit Risk Department
        //                    {
        //                        Response.Redirect("frmCreditRisk.aspx");
        //                    }
        //                    else if (int.Parse(Session["departmentID"].ToString()) == 4)
        //                    {
        //                        Response.Redirect("frmMLC.aspx");
        //                    }
        //                    else if (int.Parse(Session["departmentID"].ToString()) == 5)
        //                    {
        //                        Response.Redirect("frmCreditAdmin.aspx");
        //                    }
        //                    else if (int.Parse(Session["departmentID"].ToString()) == 7)
        //                    {
        //                        Response.Redirect("frmAdmin.aspx");
        //                    }
        //                }
        //                else
        //                {
        //                    lblMessage.Visible = true;
        //                    lnkSupport.Visible = true;
        //                    lblMessage.Text = "Sorry, Wrong Details Entries or you are Logged in with another Device. Contact Support ";
        //                }
        //            }
        //            catch (Exception ex)
        //            {
        //                MessageBox.Show(ex.Message);
        //            }
        //            finally
        //            {
        //                db.conn.Close();
        //            }
        //        }
        //    }
        //}

        public void Login()
        {
            if (txtUserName.Text == "" || txtPassword.Text == "")
            {
                lblMessage.Visible = true;
                lnkSupport.Visible = false;
                lblMessage.Text = "Please input your userName and Password";
                MessageBox.Show("Please input your userName and Password");
            }

            else
            {

                string userName = txtUserName.Text.ToString();
                string userpass = txtPassword.Text.ToString();
                string sqlstring = "SELECT* FROM tbl_users WHERE username LIKE '" + txtUserName.Text.ToString() + "' AND password LIKE '" + txtPassword.Text.ToString() + "'";
                //string sqlstring = "Exec userLogin '" + txtUserName + "', '" + txtPassword + "'";
                try
                {
                    db.openConnection();
                    db.comm.CommandText = sqlstring;
                    db.reader = db.comm.ExecuteReader();
                    if (db.reader.Read())
                    {
                        Session["userID"] = db.reader["userID"].ToString();
                        Session["userName"] = db.reader["first_name"].ToString();
                        Session["departmentID"] = db.reader["departmentID"].ToString();

                        if (int.Parse(Session["departmentID"].ToString()) == 1)
                        {
                            Response.Redirect("frmAdmin.aspx");
                        }
                        else if (int.Parse(Session["departmentID"].ToString()) == 2)
                        {
                            Response.Redirect("frmUsers.aspx");
                        }
                    }
                    else
                    {
                        lblMessage.Visible = true;
                        lnkSupport.Visible = false;
                        lblMessage.Text = "Sorry, Wrong UserName or Password used!!";
                    }
                }
                catch (Exception es)
                {
                    MessageBox.Show(es.Message);
                }
                finally
                {
                    db.conn.Close();
                }
            }
        }

        protected void lnkAdminLogin_Click(object sender, EventArgs e)
        {
            PanelAdminLogin.Visible = true;
            

            PanelStaffLogin.Visible = false;
           

            PanelStudentLogin.Visible = false;
           
        }

        protected void LnkStaffLogin_Click(object sender, EventArgs e)
        {
            PanelAdminLogin.Visible = false;
            

            PanelStaffLogin.Visible = true;
           

            PanelStudentLogin.Visible = false;
           

        }

        protected void LnkStudentLogin_Click(object sender, EventArgs e)
        {

            PanelAdminLogin.Visible = false;
          

            PanelStaffLogin.Visible = false;
           

            PanelStudentLogin.Visible = true;
           

        }

        protected void LnkStudentRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmStudents.aspx");            
        }

        protected void LnkStaffRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmEmployees.aspx");
           
        }

        
    }
}