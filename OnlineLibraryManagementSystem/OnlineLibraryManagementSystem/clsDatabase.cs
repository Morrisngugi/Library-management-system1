using System;
using System.Data.SqlClient;
using System.Data;

namespace OnlineLibraryManagementSystem
{
    public class clsDatabase
    {
        private static string dbServer = @".";
        private static string dataBase = "Library";
        private static string userName = "sa";
        private static string Password = "M0rr1s";

        public SqlConnection conn;
        public SqlCommand comm;
        public SqlDataReader reader;

        public void openConnection()
        {
            try
            {
                clsGlobal.connstr = " SERVER =" + dbServer + "; DATABASE =" + dataBase + "; user ID =" + userName + "; password =" + Password + ";";
                conn = new SqlConnection(clsGlobal.connstr);
                conn.Open();
                if(conn.State==ConnectionState.Open)
                {
                    comm = conn.CreateCommand();
                }
                else
                {
                    clsGlobal.errorMessage = "Failed to connect to the Database!!";
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void executeReader()
        {
            reader = comm.ExecuteReader();
        }
        public SqlDataAdapter adapter(string sqlstring)
        {
            SqlDataAdapter adapt = new SqlDataAdapter(sqlstring, conn);
            return adapt;
        }
       
    }
}