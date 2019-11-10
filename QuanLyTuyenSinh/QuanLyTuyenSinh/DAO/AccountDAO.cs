using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DAO
{
    public class AccountDAO
    {
        private static AccountDAO instance;
        public static AccountDAO Instance 
        {
            get { if (instance == null) instance = new AccountDAO();  return instance; }
            private set { instance = value; } 
        }

        private AccountDAO() { }

        public bool Login(string userName,string passWord)
        {
            // Sử dụng PROC CheckLogin
            string query = "dbo.CHECKLOGIN @UserName , @Pass";

            DataTable result = QuanLyTuyenSinhContext.Instance.ExecuteQuery(query,new object[] { userName, passWord });

            return result.Rows.Count>0;
        }
    }
}
