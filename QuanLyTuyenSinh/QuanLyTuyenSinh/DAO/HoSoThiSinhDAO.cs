using QuanLyTuyenSinh.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DAO
{
    public class HoSoThiSinhDAO
    {
        private static HoSoThiSinhDAO instance;
        public static HoSoThiSinhDAO Instance 
        {
            get { if (instance == null) instance = new HoSoThiSinhDAO(); return instance; }
            private set { instance = value; }
        }

        private HoSoThiSinhDAO() { }

        //public void GetLoadHoSoThiSinhList()
        //{
        //    List<HOSOTHISINH> tableList = new List<HOSOTHISINH>();

        //    DataTable data = QuanLyTuyenSinhContext.Instance.ExecuteQuery("LOADTableHoSoThiSinh;");

        //    foreach (DataRow item in data.Rows)
        //    {
        //        HOSOTHISINH HoSo = new HOSOTHISINH(item);
        //        tableList.Add(HoSo);
        //    }

     
        //}
    }
}
