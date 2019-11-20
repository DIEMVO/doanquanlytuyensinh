using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyTuyenSinh.DTO
{
    public class DANTOC
    {
        [Key]
        private int maDanToc;
        private string tenDanToc;
        private float diemDanToc;

        public int MaDanToc { get => maDanToc; set => maDanToc = value; }
        public string TenDanToc { get => tenDanToc; set => tenDanToc = value; }
        public float DiemDanToc { get => diemDanToc; set => diemDanToc = value; }
        
    }
}
