using QuanLyTuyenSinh.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DAO
{
    public class NganhDAO
    {
        private static NganhDAO instance;

        public static NganhDAO Instance {
            get { if (instance == null) instance = new NganhDAO(); return instance; }
            private set { instance = value; }
        }

        private NganhDAO() { }

        public List<NGANH> LoadTableNganh()
        {
            List<NGANH> table = new List<NGANH>();
            DataTable data = QuanLyTuyenSinhContext.Instance.ExecuteQuery("LOADNganh");

            foreach(DataRow item in data.Rows)
            {
                NGANH nganh = new NGANH(item);
                table.Add(nganh);
            }

            return table;
        }


    }
}
