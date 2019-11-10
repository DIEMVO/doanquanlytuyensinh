using QuanLyTuyenSinh.DAO;
using QuanLyTuyenSinh.DTO;
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
            List<HOSOTHISINH> tableList = new List<HOSOTHISINH>();

            DataTable data = QuanLyTuyenSinhContext.Instance.ExecuteQuery("LOADTableHoSoThiSinh;");

            foreach (DataRow item in data.Rows)
            {
                HOSOTHISINH HoSo = new HOSOTHISINH(item);
                tableList.Add(HoSo);
            }
            dataGridView_QLTS.DataSource = tableList;
        }
    }
}
