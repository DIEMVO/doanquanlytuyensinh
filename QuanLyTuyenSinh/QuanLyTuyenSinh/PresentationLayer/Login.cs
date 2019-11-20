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
    public partial class Login : Form
    {

        public Login()
        {
            InitializeComponent();
        }
        #region Events
        private void btndangnhap_Click(object sender, EventArgs e)
        {
            string userName = tbxname.Text;
            string passWord = tbxpass.Text;
            if (CheckLogin(userName,passWord))
            {
                quanly form = new quanly();
                this.Hide();
                form.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("Dang Nhap Sai");
            }
        }
        bool CheckLogin(string userName,string passWord)
        {
            return AccountDAO.Instance.Login(userName,passWord);
        }
        private void Login_FormClosing(object sender, FormClosingEventArgs e)
        {
            
            if (MessageBox.Show("Ban muon thoat", "Thong Bao", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
            { e.Cancel = true; }
        }

        #endregion

    }
}
