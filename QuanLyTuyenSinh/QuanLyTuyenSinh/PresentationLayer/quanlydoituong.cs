using QuanLyTuyenSinh.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyTuyenSinh.PresentationLayer
{
    public partial class quanlydoituong : Form
    {
        public quanlydoituong()
        {
            InitializeComponent();
            LoadTable();
        }

        public void LoadTable()
        {
            dgvDoiTuong.DataSource = DoiTuongDAO.Instance.LoadTableDoiTuong();
        }
    }
}
