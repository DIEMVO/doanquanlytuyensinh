using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DTO
{
    public class KHUVUC
    {
        private string maKhuVuc;
        private string tenKhuVuc;
        private double diemCong;

        public string MaKhuVuc { get => maKhuVuc; set => maKhuVuc = value; }
        public string TenKhuVuc { get => tenKhuVuc; set => tenKhuVuc = value; }
        public double DiemCong { get => diemCong; set => diemCong = value; }

        public KHUVUC() { }

        public KHUVUC(string makhuvuc,string tenkhuvuc,double diemcong)
        {
            this.MaKhuVuc = makhuvuc;
            this.TenKhuVuc = tenkhuvuc;
            this.DiemCong = diemcong;
        }

        public KHUVUC(DataRow row)
        {
            this.MaKhuVuc = row["MaKhuVuc"].ToString();
            this.TenKhuVuc = row["TenKhuVuc"].ToString();
            this.DiemCong = (double)row["DiemCongKV"];
        }
    }
}
