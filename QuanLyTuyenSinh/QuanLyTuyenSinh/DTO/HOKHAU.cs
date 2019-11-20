using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DTO
{
    public class HOKHAU
    {
        private int maHoKhau;
        private string tenHuyen;
        private string tenTinh;
        private string maKhuVuc;
        private string tenKhuVuc;
        private double diemCong;

        public int MaHoKhau { private get => maHoKhau; set => maHoKhau = value; }
        public string TenHuyen { get => tenHuyen; set => tenHuyen = value; }
        public string TenTinh { get => tenTinh; set => tenTinh = value; }
        public string MaKhuVuc {private get => maKhuVuc; set => maKhuVuc = value; }
        public string TenKhuVuc { get => tenKhuVuc; set => tenKhuVuc = value; }
        public double DiemCong { get => diemCong; set => diemCong = value; }

        public HOKHAU() { }

        public HOKHAU(int mahokhau,string tentinh,string  tenhuyen,string makhuvuc,string tenkhuvuc,double diemcong)
        {
            this.MaHoKhau = mahokhau;
            this.TenTinh = tentinh;
            this.TenHuyen = tenhuyen;
            this.MaKhuVuc = makhuvuc;
            this.TenKhuVuc = tenkhuvuc;
            this.DiemCong = diemcong;
        }

        public HOKHAU(DataRow row)
        {
            this.MaHoKhau = (int)row["MaHoKhau"];
            this.TenTinh = row["TenTinh"].ToString();
            this.TenHuyen = row["TenHuyen"].ToString();
            this.MaKhuVuc = row["MaKhuVuc"].ToString();
            this.TenKhuVuc = row["TenKhuVuc"].ToString();
            this.DiemCong = (double)row["DiemCongKV"];
        }
    }
}
