namespace QuanLyTuyenSinh.PresentationLayer
{
    partial class QuanlyAccount
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
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dgvaccount = new System.Windows.Forms.DataGridView();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.pnl = new System.Windows.Forms.Panel();
            this.chbxadmin = new System.Windows.Forms.CheckBox();
            this.tbxuser = new System.Windows.Forms.TextBox();
            this.tbxten = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnthoat = new System.Windows.Forms.Button();
            this.btnluu = new System.Windows.Forms.Button();
            this.btnresetpass = new System.Windows.Forms.Button();
            this.btnhuy = new System.Windows.Forms.Button();
            this.btnthem = new System.Windows.Forms.Button();
            this.btnxoa = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dgvaccount)).BeginInit();
            this.pnl.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // Column3
            // 
            this.Column3.DataPropertyName = "TYPE";
            this.Column3.HeaderText = "Quyền hạn";
            this.Column3.Name = "Column3";
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "NAME";
            this.Column1.HeaderText = "Tên hiển thị";
            this.Column1.Name = "Column1";
            // 
            // dgvaccount
            // 
            this.dgvaccount.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvaccount.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvaccount.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3});
            this.dgvaccount.Location = new System.Drawing.Point(20, 194);
            this.dgvaccount.Margin = new System.Windows.Forms.Padding(2);
            this.dgvaccount.Name = "dgvaccount";
            this.dgvaccount.RowTemplate.Height = 24;
            this.dgvaccount.Size = new System.Drawing.Size(544, 206);
            this.dgvaccount.TabIndex = 7;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "USERNAME";
            this.Column2.HeaderText = "Tên đăng nhập";
            this.Column2.Name = "Column2";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(32, 3);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(181, 25);
            this.label1.TabIndex = 6;
            this.label1.Text = "Quản lý tài khoản";
            // 
            // pnl
            // 
            this.pnl.Controls.Add(this.chbxadmin);
            this.pnl.Controls.Add(this.tbxuser);
            this.pnl.Controls.Add(this.tbxten);
            this.pnl.Controls.Add(this.label3);
            this.pnl.Controls.Add(this.label2);
            this.pnl.Location = new System.Drawing.Point(20, 33);
            this.pnl.Margin = new System.Windows.Forms.Padding(2);
            this.pnl.Name = "pnl";
            this.pnl.Size = new System.Drawing.Size(544, 79);
            this.pnl.TabIndex = 5;
            // 
            // chbxadmin
            // 
            this.chbxadmin.AutoSize = true;
            this.chbxadmin.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chbxadmin.Location = new System.Drawing.Point(396, 28);
            this.chbxadmin.Margin = new System.Windows.Forms.Padding(2);
            this.chbxadmin.Name = "chbxadmin";
            this.chbxadmin.Size = new System.Drawing.Size(86, 21);
            this.chbxadmin.TabIndex = 9;
            this.chbxadmin.Text = "Là Admin";
            this.chbxadmin.UseVisualStyleBackColor = true;
            // 
            // tbxuser
            // 
            this.tbxuser.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbxuser.Location = new System.Drawing.Point(116, 44);
            this.tbxuser.Margin = new System.Windows.Forms.Padding(2);
            this.tbxuser.Name = "tbxuser";
            this.tbxuser.Size = new System.Drawing.Size(249, 23);
            this.tbxuser.TabIndex = 7;
            this.tbxuser.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tbxten
            // 
            this.tbxten.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbxten.Location = new System.Drawing.Point(116, 11);
            this.tbxten.Margin = new System.Windows.Forms.Padding(2);
            this.tbxten.Name = "tbxten";
            this.tbxten.Size = new System.Drawing.Size(249, 23);
            this.tbxten.TabIndex = 6;
            this.tbxten.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(11, 48);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(109, 17);
            this.label3.TabIndex = 4;
            this.label3.Text = "Tên đăng nhập:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(9, 11);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(87, 17);
            this.label2.TabIndex = 3;
            this.label2.Text = "Tên hiển thị:";
            // 
            // btnthoat
            // 
            this.btnthoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnthoat.Location = new System.Drawing.Point(459, 16);
            this.btnthoat.Name = "btnthoat";
            this.btnthoat.Size = new System.Drawing.Size(71, 31);
            this.btnthoat.TabIndex = 43;
            this.btnthoat.Text = "Thoát";
            this.btnthoat.UseVisualStyleBackColor = true;
            // 
            // btnluu
            // 
            this.btnluu.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnluu.Location = new System.Drawing.Point(96, 16);
            this.btnluu.Name = "btnluu";
            this.btnluu.Size = new System.Drawing.Size(70, 31);
            this.btnluu.TabIndex = 42;
            this.btnluu.Text = "Lưu";
            this.btnluu.UseVisualStyleBackColor = true;
            // 
            // btnresetpass
            // 
            this.btnresetpass.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnresetpass.Location = new System.Drawing.Point(182, 16);
            this.btnresetpass.Name = "btnresetpass";
            this.btnresetpass.Size = new System.Drawing.Size(73, 31);
            this.btnresetpass.TabIndex = 45;
            this.btnresetpass.Text = "Re pass";
            this.btnresetpass.UseVisualStyleBackColor = true;
            // 
            // btnhuy
            // 
            this.btnhuy.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnhuy.Location = new System.Drawing.Point(368, 16);
            this.btnhuy.Name = "btnhuy";
            this.btnhuy.Size = new System.Drawing.Size(70, 31);
            this.btnhuy.TabIndex = 44;
            this.btnhuy.Text = "Hủy";
            this.btnhuy.UseVisualStyleBackColor = true;
            // 
            // btnthem
            // 
            this.btnthem.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnthem.Location = new System.Drawing.Point(11, 16);
            this.btnthem.Name = "btnthem";
            this.btnthem.Size = new System.Drawing.Size(70, 31);
            this.btnthem.TabIndex = 40;
            this.btnthem.Text = "Thêm";
            this.btnthem.UseVisualStyleBackColor = true;
            // 
            // btnxoa
            // 
            this.btnxoa.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnxoa.Location = new System.Drawing.Point(274, 16);
            this.btnxoa.Name = "btnxoa";
            this.btnxoa.Size = new System.Drawing.Size(73, 31);
            this.btnxoa.TabIndex = 41;
            this.btnxoa.Text = "Xóa";
            this.btnxoa.UseVisualStyleBackColor = true;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnresetpass);
            this.panel1.Controls.Add(this.btnhuy);
            this.panel1.Controls.Add(this.btnthem);
            this.panel1.Controls.Add(this.btnthoat);
            this.panel1.Controls.Add(this.btnluu);
            this.panel1.Controls.Add(this.btnxoa);
            this.panel1.Location = new System.Drawing.Point(20, 116);
            this.panel1.Margin = new System.Windows.Forms.Padding(2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(544, 61);
            this.panel1.TabIndex = 4;
            // 
            // QuanlyAccount
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(585, 411);
            this.Controls.Add(this.dgvaccount);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.pnl);
            this.Controls.Add(this.panel1);
            this.Name = "QuanlyAccount";
            this.Text = "Quản lý tài khoản";
            ((System.ComponentModel.ISupportInitialize)(this.dgvaccount)).EndInit();
            this.pnl.ResumeLayout(false);
            this.pnl.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridView dgvaccount;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel pnl;
        private System.Windows.Forms.CheckBox chbxadmin;
        private System.Windows.Forms.TextBox tbxuser;
        private System.Windows.Forms.TextBox tbxten;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnthoat;
        private System.Windows.Forms.Button btnluu;
        private System.Windows.Forms.Button btnresetpass;
        private System.Windows.Forms.Button btnhuy;
        private System.Windows.Forms.Button btnthem;
        private System.Windows.Forms.Button btnxoa;
        private System.Windows.Forms.Panel panel1;
    }
}