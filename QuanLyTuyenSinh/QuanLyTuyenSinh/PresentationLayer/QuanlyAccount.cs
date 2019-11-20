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
    public partial class QuanlyAccount : Form
    {
        public QuanlyAccount()
        {
            InitializeComponent();
            LoadTable();
        }

        private void LoadTable()
        {
            dgvaccount.DataSource = AccountDAO.Instance.LoadAccount();
        }

        #region Events
        private void btnthem_Click(object sender, EventArgs e)
        {
            string namePerson = tbxten.Text;
            string userName = tbxuser.Text;
            string pass = "1";
            int typePerson;
            if (chbxadmin.Checked == true)
            {
                typePerson = 1;
            }
            else
                typePerson = 2;

            if(AccountDAO.Instance.Insert(namePerson,userName,pass,typePerson))
            {
                MessageBox.Show("Ban Da Them Tai Khoan Thanh Cong");
                LoadTable();
            }
            else
            {
                MessageBox.Show("Co Loi Them Tai Khoan");
            }
        }
        #endregion
    }
}
