using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh
{
    public class QuanLyTuyenSinhContext
    {
        private static QuanLyTuyenSinhContext instance; //Singleton
        private QuanLyTuyenSinhContext() { } //Ham dung

        private string ConnStr = "Data Source=DESKTOP-6ODFHLP\\VUONGSQL;Initial Catalog=QuanLyTuyenSinh;Integrated Security=True"; //Connection
        SqlConnection connection = null;
        SqlCommand command = null;
        SqlDataAdapter data = null;

        public static QuanLyTuyenSinhContext Instance 
        {
            
            get { if (instance == null) instance = new QuanLyTuyenSinhContext(); return QuanLyTuyenSinhContext.instance; } 
            private set { QuanLyTuyenSinhContext.instance = value; } 
        }

        //Thực thi Query
        public DataTable ExecuteQuery(string query,object[] parameter =null) 
        {
            DataTable datatable = new DataTable();
            using (connection=new SqlConnection(ConnStr))
            {
                connection.Open();
                command = new SqlCommand(query, connection);
                if(parameter!=null)
                {
                    string[] Listparameter = query.Split(' ');
                    int i = 0;
                    foreach(string item in Listparameter)
                    {
                        if(item.Contains('@'))
                        {
                            command.Parameters.AddWithValue(item, parameter[i]);
                            i++;
                        }
                    }

                }
                data = new SqlDataAdapter(command);
                data.Fill(datatable);
                connection.Close();
            }
                return datatable;
        } 
        //Dòng thực thi
        public int ExecuteNonQuery(string query, object[] parameter = null)
        {
            int data = 0;
            using (connection = new SqlConnection(ConnStr))
            {
                connection.Open();
                command = new SqlCommand(query, connection);
                if (parameter != null)
                {
                    string[] Listparameter = query.Split(' ');
                    int i = 0;
                    foreach (string item in Listparameter)
                    {
                        if (item.Contains('@'))
                        {
                            command.Parameters.AddWithValue(item, parameter[i]);
                            i++;
                        }
                    }

                }
                data = command.ExecuteNonQuery();
                connection.Close();
            }
            return data;
        }

        public object ExecuteScalar(string query, object[] parameter = null)
        {
            object data = 0;
            using (connection = new SqlConnection(ConnStr))
            {
                connection.Open();
                command = new SqlCommand(query, connection);
                if (parameter != null)
                {
                    string[] Listparameter = query.Split(' ');
                    int i = 0;
                    foreach (string item in Listparameter)
                    {
                        if (item.Contains('@'))
                        {
                            command.Parameters.AddWithValue(item, parameter[i]);
                            i++;
                        }
                    }

                }
                data = command.ExecuteScalar();
                connection.Close();
            }
            return data;
        }
    }
}
