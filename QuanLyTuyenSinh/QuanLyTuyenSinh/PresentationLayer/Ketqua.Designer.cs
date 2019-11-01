namespace QuanLyTuyenSinh.PresentationLayer
{
    partial class Ketqua
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
            this.components = new System.ComponentModel.Container();
            this.btnhuy = new System.Windows.Forms.Button();
            this.btnxacnhan = new System.Windows.Forms.Button();
            this.columnHeader7 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader6 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader5 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lwMonDaChon = new System.Windows.Forms.ListView();
            this.columnHeader8 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.label1 = new System.Windows.Forms.Label();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnhuy
            // 
            this.btnhuy.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnhuy.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnhuy.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnhuy.Location = new System.Drawing.Point(371, 280);
            this.btnhuy.Name = "btnhuy";
            this.btnhuy.Size = new System.Drawing.Size(110, 37);
            this.btnhuy.TabIndex = 38;
            this.btnhuy.Text = "Thoát";
            this.btnhuy.UseVisualStyleBackColor = true;
            // 
            // btnxacnhan
            // 
            this.btnxacnhan.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnxacnhan.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnxacnhan.ForeColor = System.Drawing.Color.Red;
            this.btnxacnhan.Location = new System.Drawing.Point(238, 280);
            this.btnxacnhan.Name = "btnxacnhan";
            this.btnxacnhan.Size = new System.Drawing.Size(110, 37);
            this.btnxacnhan.TabIndex = 37;
            this.btnxacnhan.Text = "In";
            this.btnxacnhan.UseVisualStyleBackColor = true;
            this.btnxacnhan.Click += new System.EventHandler(this.btnxacnhan_Click);
            // 
            // columnHeader7
            // 
            this.columnHeader7.Text = "Tổng điểm";
            this.columnHeader7.Width = 65;
            // 
            // columnHeader6
            // 
            this.columnHeader6.Text = "Khu vực";
            this.columnHeader6.Width = 70;
            // 
            // columnHeader5
            // 
            this.columnHeader5.Text = "Họ tên";
            this.columnHeader5.Width = 120;
            // 
            // lwMonDaChon
            // 
            this.lwMonDaChon.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader5,
            this.columnHeader6,
            this.columnHeader7,
            this.columnHeader8,
            this.columnHeader1});
            this.lwMonDaChon.HideSelection = false;
            this.lwMonDaChon.Location = new System.Drawing.Point(2, 89);
            this.lwMonDaChon.Margin = new System.Windows.Forms.Padding(2);
            this.lwMonDaChon.Name = "lwMonDaChon";
            this.lwMonDaChon.Size = new System.Drawing.Size(480, 170);
            this.lwMonDaChon.TabIndex = 28;
            this.lwMonDaChon.UseCompatibleStateImageBehavior = false;
            this.lwMonDaChon.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader8
            // 
            this.columnHeader8.Text = "Kết quả";
            this.columnHeader8.Width = 90;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(118, 26);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(250, 37);
            this.label1.TabIndex = 26;
            this.label1.Text = "Kết quả tra cứu";
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Ngành";
            // 
            // Ketqua
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(493, 331);
            this.Controls.Add(this.btnhuy);
            this.Controls.Add(this.btnxacnhan);
            this.Controls.Add(this.lwMonDaChon);
            this.Controls.Add(this.label1);
            this.Name = "Ketqua";
            this.Text = "Ketqua";
            this.Load += new System.EventHandler(this.Ketqua_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnhuy;
        private System.Windows.Forms.Button btnxacnhan;
        private System.Windows.Forms.ColumnHeader columnHeader7;
        private System.Windows.Forms.ColumnHeader columnHeader6;
        private System.Windows.Forms.ColumnHeader columnHeader5;
        private System.Windows.Forms.ListView lwMonDaChon;
        private System.Windows.Forms.ColumnHeader columnHeader8;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.Label label1;
    }
}