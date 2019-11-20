using QuanLyTuyenSinh.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DAO
{
    public class HoKhauDAO
    {
        private static HoKhauDAO instance;

        public static HoKhauDAO Instance 
        {
            get { if (instance == null) instance = new HoKhauDAO(); return instance; }
            private set { instance = value; }
        }

        private HoKhauDAO() { }

        public List<HOKHAU> LoadTableHoKhau()
        {
            List<HOKHAU> table = new List<HOKHAU>();
            DataTable data = QuanLyTuyenSinhContext.Instance.ExecuteQuery("LOADHoKhau");

            foreach(DataRow item in data.Rows)
            {
                HOKHAU hokhau = new HOKHAU(item);
                table.Add(hokhau);
            }
            return table;
        }
    }
}
