﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WindowsForm
{
    public partial class Form4 : Form
    {
        string res;

        public void pass(string qs)
        {
            res = qs;
        }

        SqlConnection conn = new SqlConnection("Data Source=KEN;Initial Catalog=HCSDL2;Integrated Security=True");
        public Form4()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form11 capnhatthongtinnhaphanbien = new Form11();
            capnhatthongtinnhaphanbien.pass(res);
            capnhatthongtinnhaphanbien.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form12 capnhatbaiphanbien = new Form12();
            capnhatbaiphanbien.pass(res);
            capnhatbaiphanbien.Show();
        }
    }
}
