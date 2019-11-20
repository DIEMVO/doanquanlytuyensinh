using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DTO
{
    public class NGANH
    {
        private string maNganh;
        private string tenNganh;
        private int chiTieu;
        private double diemChuan;

        public string MaNganh { get => maNganh; set => maNganh = value; }
        public string TenNganh { get => tenNganh; set => tenNganh = value; }
        public int ChiTieu { get => chiTieu; set => chiTieu = value; }
        public double DiemChuan { get => diemChuan; set => diemChuan = value; }

        public NGANH() { }

        public NGANH(string manganh,string tennganh,int chitieu,double diemchuan)
        {
            this.MaNganh = manganh;
            this.TenNganh = tennganh;
            this.ChiTieu = chitieu;
            this.DiemChuan = diemchuan;
        }

        public NGANH(DataRow row)
        {
            this.maNganh = row["MaNganh"].ToString();
            this.tenNganh = row["TenNganh"].ToString();
            this.ChiTieu = (int)row["ChiTieu"];
            this.DiemChuan =(double)row["DiemChuan"];
        }
    }
}
