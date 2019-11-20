
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
    public partial class QuanLynganh : Form
    {
        public QuanLynganh()
        {
            InitializeComponent();
            LoadTable();
        }

        private void LoadTable()
        {
            dgvnganh.DataSource = NganhDAO.Instance.LoadTableNganh();
        }
    }
}
