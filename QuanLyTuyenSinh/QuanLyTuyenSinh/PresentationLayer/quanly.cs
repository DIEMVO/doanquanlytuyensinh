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
    public partial class quanly : Form
    {
        public static bool isLogin = false;
        public static bool isAdmin = false;
        public static ACCOUNT Account;
        public quanly()
        {
            InitializeComponent();
            Load();
        }

        private void Load()
        {

        }

        private void thoátToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DialogResult dl = MessageBox.Show("Bạn có muốn thoát không?",
             "Thông báo!", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dl == DialogResult.Yes)
                Application.Exit();
        }

        private void đăngNhậpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            this.Hide();
            login.ShowDialog();
            this.Show();
        }

        private void XemKetQua_Click(object sender, EventArgs e)
        {
            QuanLyTuyenSinh ld = new QuanLyTuyenSinh();
            this.Hide();
            ld.ShowDialog();
            this.Show();
        }
    }
}
