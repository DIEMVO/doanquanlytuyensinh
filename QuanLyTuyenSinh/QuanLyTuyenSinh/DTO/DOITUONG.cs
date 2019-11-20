using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DTO
{
    public class DOITUONG
    {
        private int maDoiTuong;
        private string loaiDoiTuong;
        private double diemCongDTuong;

        public int MaDoiTuong { get => maDoiTuong; set => maDoiTuong = value; }
        public string LoaiDoiTuong { get => loaiDoiTuong; set => loaiDoiTuong = value; }
        public double DiemCongDTuong { get => diemCongDTuong; set => diemCongDTuong = value; }

        public DOITUONG() { }

        public DOITUONG(int madoituong,string loaidoituong,float  diemcongdtuong)
        {
            this.MaDoiTuong = madoituong;
            this.LoaiDoiTuong = loaidoituong;
            this.DiemCongDTuong = diemcongdtuong;
        }
        public DOITUONG(DataRow row)
        {
            MaDoiTuong = (int)row["MaDoiTuong"];
            LoaiDoiTuong = row["LoaiDoiTuong"].ToString();
            DiemCongDTuong = (double)row["DiemCongDTuong"];
        }
    }
}
