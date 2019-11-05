namespace QuanLyTuyenSinh.PresentationLayer
{
    partial class quanlydoituong
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dgvMon = new System.Windows.Forms.DataGridView();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnhuy = new System.Windows.Forms.Button();
            this.btnLuu = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.lbMadoituong = new System.Windows.Forms.Label();
            this.cmbLoaiMon = new System.Windows.Forms.ComboBox();
            this.txtTendoituong = new System.Windows.Forms.TextBox();
            this.lbTenMon = new System.Windows.Forms.Label();
            this.txtDiemcong = new System.Windows.Forms.TextBox();
            this.lbDiemcong = new System.Windows.Forms.Label();
            this.pnl = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMon)).BeginInit();
            this.pnl.SuspendLayout();
            this.SuspendLayout();
            // 
            // Column5
            // 
            this.Column5.DataPropertyName = "TYPENAME";
            this.Column5.HeaderText = "Điểm cộng";
            this.Column5.Name = "Column5";
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "IDFOOD";
            this.Column1.HeaderText = "Mã đối tượng";
            this.Column1.Name = "Column1";
            // 
            // dgvMon
            // 
            this.dgvMon.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvMon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvMon.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column5});
            this.dgvMon.Location = new System.Drawing.Point(24, 147);
            this.dgvMon.Name = "dgvMon";
            this.dgvMon.Size = new System.Drawing.Size(607, 245);
            this.dgvMon.TabIndex = 45;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "IDTYPE";
            this.Column2.HeaderText = "Tên đối tượng";
            this.Column2.Name = "Column2";
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(491, 107);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(59, 23);
            this.btnThoat.TabIndex = 44;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            // 
            // btnhuy
            // 
            this.btnhuy.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnhuy.Location = new System.Drawing.Point(400, 107);
            this.btnhuy.Name = "btnhuy";
            this.btnhuy.Size = new System.Drawing.Size(58, 23);
            this.btnhuy.TabIndex = 43;
            this.btnhuy.Text = "Hủy";
            this.btnhuy.UseVisualStyleBackColor = true;
            // 
            // btnLuu
            // 
            this.btnLuu.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLuu.Location = new System.Drawing.Point(304, 107);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(58, 23);
            this.btnLuu.TabIndex = 42;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.UseVisualStyleBackColor = true;
            // 
            // btnXoa
            // 
            this.btnXoa.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoa.Location = new System.Drawing.Point(214, 107);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(61, 23);
            this.btnXoa.TabIndex = 41;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            // 
            // btnSua
            // 
            this.btnSua.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSua.Location = new System.Drawing.Point(112, 107);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(58, 23);
            this.btnSua.TabIndex = 40;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = true;
            // 
            // btnThem
            // 
            this.btnThem.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThem.Location = new System.Drawing.Point(24, 107);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(58, 23);
            this.btnThem.TabIndex = 39;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            // 
            // lbMadoituong
            // 
            this.lbMadoituong.AutoSize = true;
            this.lbMadoituong.Location = new System.Drawing.Point(12, 35);
            this.lbMadoituong.Name = "lbMadoituong";
            this.lbMadoituong.Size = new System.Drawing.Size(70, 13);
            this.lbMadoituong.TabIndex = 6;
            this.lbMadoituong.Text = "Mã đối tượng";
            // 
            // cmbLoaiMon
            // 
            this.cmbLoaiMon.FormattingEnabled = true;
            this.cmbLoaiMon.Location = new System.Drawing.Point(88, 32);
            this.cmbLoaiMon.Name = "cmbLoaiMon";
            this.cmbLoaiMon.Size = new System.Drawing.Size(163, 21);
            this.cmbLoaiMon.TabIndex = 8;
            // 
            // txtTendoituong
            // 
            this.txtTendoituong.Location = new System.Drawing.Point(87, 7);
            this.txtTendoituong.Name = "txtTendoituong";
            this.txtTendoituong.Size = new System.Drawing.Size(163, 20);
            this.txtTendoituong.TabIndex = 7;
            // 
            // lbTenMon
            // 
            this.lbTenMon.AutoSize = true;
            this.lbTenMon.Location = new System.Drawing.Point(7, 10);
            this.lbTenMon.Name = "lbTenMon";
            this.lbTenMon.Size = new System.Drawing.Size(74, 13);
            this.lbTenMon.TabIndex = 5;
            this.lbTenMon.Text = "Tên đối tượng";
            // 
            // txtDiemcong
            // 
            this.txtDiemcong.Location = new System.Drawing.Point(260, 32);
            this.txtDiemcong.Name = "txtDiemcong";
            this.txtDiemcong.Size = new System.Drawing.Size(150, 20);
            this.txtDiemcong.TabIndex = 10;
            // 
            // lbDiemcong
            // 
            this.lbDiemcong.AutoSize = true;
            this.lbDiemcong.Location = new System.Drawing.Point(257, 10);
            this.lbDiemcong.Name = "lbDiemcong";
            this.lbDiemcong.Size = new System.Drawing.Size(58, 13);
            this.lbDiemcong.TabIndex = 9;
            this.lbDiemcong.Text = "Điểm cộng";
            // 
            // pnl
            // 
            this.pnl.Controls.Add(this.lbMadoituong);
            this.pnl.Controls.Add(this.cmbLoaiMon);
            this.pnl.Controls.Add(this.txtTendoituong);
            this.pnl.Controls.Add(this.lbTenMon);
            this.pnl.Controls.Add(this.txtDiemcong);
            this.pnl.Controls.Add(this.lbDiemcong);
            this.pnl.Location = new System.Drawing.Point(24, 25);
            this.pnl.Name = "pnl";
            this.pnl.Size = new System.Drawing.Size(452, 65);
            this.pnl.TabIndex = 38;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(6, 2);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(143, 20);
            this.label2.TabIndex = 37;
            this.label2.Text = "Thông tin chi tiết";
            // 
            // quanlydoituong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(669, 409);
            this.Controls.Add(this.dgvMon);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnhuy);
            this.Controls.Add(this.btnLuu);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.btnSua);
            this.Controls.Add(this.btnThem);
            this.Controls.Add(this.pnl);
            this.Controls.Add(this.label2);
            this.Name = "quanlydoituong";
            this.Text = "quanlydoituong";
            ((System.ComponentModel.ISupportInitialize)(this.dgvMon)).EndInit();
            this.pnl.ResumeLayout(false);
            this.pnl.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridView dgvMon;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnhuy;
        private System.Windows.Forms.Button btnLuu;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.Label lbMadoituong;
        private System.Windows.Forms.ComboBox cmbLoaiMon;
        private System.Windows.Forms.TextBox txtTendoituong;
        private System.Windows.Forms.Label lbTenMon;
        private System.Windows.Forms.TextBox txtDiemcong;
        private System.Windows.Forms.Label lbDiemcong;
        private System.Windows.Forms.Panel pnl;
        private System.Windows.Forms.Label label2;
    }
}