using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyTuyenSinh.PresentationLayer
{
    public partial class QuanLyTuyenSinh : Form
    {
        public QuanLyTuyenSinh()
        {
            InitializeComponent();
            LoaddataGridView();
        }

        private void LoaddataGridView()
        {
            string query = " select * from ShowHOSOTHISINH() as Show";
            
            dataGridView_QLTS.DataSource = QuanLyTuyenSinhContext.Instance.ExecuteQuery(query);
        }
    }
}
