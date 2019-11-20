using QuanLyTuyenSinh.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DAO
{
    public class KhuVucDAO
    {
        private static KhuVucDAO instance;

        public static KhuVucDAO Instance 
        {
            get { if (instance == null) instance = new KhuVucDAO(); return instance; }
            private set { instance = value; }
        }
        private KhuVucDAO() { }

        public List<KHUVUC> LoadTableKhuVuc()
        {
            List<KHUVUC> table = new List<KHUVUC>();
            DataTable data = QuanLyTuyenSinhContext.Instance.ExecuteQuery("LOADKhuVuc");
            foreach(DataRow item in data.Rows)
            {
                KHUVUC khuvuc = new KHUVUC(item);
                table.Add(khuvuc);
            }
            return table;
        }
    }
}
