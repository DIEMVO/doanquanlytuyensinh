using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DTO
{
    class HOSOTHISINH
    {
        private int iD;
        private string hoDem;
        private string ten;
        private DateTime ngaySinh;
        private bool gioiTinh;
        private string tenHuyen;
        private string tenTinh;
        private string loaiDoiTuong;
        private string tenDanToc;
        private string tenNganh;
        private int nguyenVong;


        public int ID { get => iD; set => iD = value; }
        public string HoDem { get => hoDem; set => hoDem = value; }
        public string Ten { get => ten; set => ten = value; }
        public DateTime NgaySinh { get => ngaySinh; set => ngaySinh = value; }
        public bool GioiTinh { get => gioiTinh; set => gioiTinh = value; }
        public string TenHuyen { get => tenHuyen; set => tenHuyen = value; }
        public string TenTinh { get => tenTinh; set => tenTinh = value; }
        public string LoaiDoiTuong { get => loaiDoiTuong; set => loaiDoiTuong = value; }
        public string TenDanToc { get => tenDanToc; set => tenDanToc = value; }
        public string TenNganh { get => tenNganh; set => tenNganh = value; }
        public int NguyenVong { get => nguyenVong; set => nguyenVong = value; }

        public HOSOTHISINH(int id,string hodem,string ten,DateTime ngaysinh,bool gioitinh,string tenhuyen,string tentinh,string loaidoituong,string tendantoc,string tennganh,int nguyenvong) 
        {
            this.ID = id;
            this.HoDem = hodem;
            this.Ten = ten;
            this.NgaySinh = ngaysinh;
            this.GioiTinh = gioitinh;
            this.TenHuyen = tenhuyen;
            this.TenTinh = tentinh;
            this.LoaiDoiTuong = loaidoituong;
            this.TenDanToc = tendantoc;
            this.TenNganh = tennganh;
            this.NguyenVong = nguyenvong;
        }

        public HOSOTHISINH(DataRow row)
        {
            this.ID = (int)row["SBD"];
            this.HoDem = row["HoDem"].ToString();
            this.Ten = row["Ten"].ToString();
            this.NgaySinh = (DateTime)row["NgaySinh"];
            this.GioiTinh = (bool)row["GioiTinh"];
            this.TenHuyen = row["TenHuyen"].ToString();
            this.TenTinh = row["TenTinh"].ToString();
            this.LoaiDoiTuong = row["LoaiDoiTuong"].ToString();
            this.TenDanToc = row["TenDanToc"].ToString();
            this.TenNganh = row["TenNganh"].ToString();
            this.NguyenVong=(int)row["NguyenVong"];
        }
    }
}
