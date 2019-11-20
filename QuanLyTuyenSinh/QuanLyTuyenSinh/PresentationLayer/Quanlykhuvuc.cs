﻿using QuanLyTuyenSinh.DAO;
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
    public partial class Quanlykhuvuc : Form
    {
        public Quanlykhuvuc()
        {
            InitializeComponent();
            LoadTableHoKhau();
            LoadTableKhuVuc();
        }

        private void LoadTableKhuVuc()
        {
            dgvdanhmuckhuvuc.DataSource = KhuVucDAO.Instance.LoadTableKhuVuc();
        }

        public void LoadTableHoKhau()
        {
            dgvHoKhau.DataSource = HoKhauDAO.Instance.LoadTableHoKhau();
        }

        
    }
}
