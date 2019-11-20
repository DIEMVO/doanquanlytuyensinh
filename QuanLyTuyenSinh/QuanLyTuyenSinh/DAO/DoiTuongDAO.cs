using QuanLyTuyenSinh.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DAO
{
    public class DoiTuongDAO
    {
        private static DoiTuongDAO instance;

        public static DoiTuongDAO Instance
        {
            get { if (instance == null) instance = new DoiTuongDAO(); return instance; }
            private set { instance = value; }
        }

        private DoiTuongDAO() { }

        public List<DOITUONG> LoadTableDoiTuong()
        {
            List<DOITUONG> table = new List<DOITUONG>();
            DataTable data = QuanLyTuyenSinhContext.Instance.ExecuteQuery("LOADDoiTuong");

            foreach(DataRow item in data.Rows)
            {
                DOITUONG doituong = new DOITUONG(item);
                table.Add(doituong);
            }

            return table;
        }
    }
}
