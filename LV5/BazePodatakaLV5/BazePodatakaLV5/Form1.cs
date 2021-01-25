using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace BazePodatakaLV5
{
    public partial class Form1 : Form
    {

        private String name;
        private String surname;
        private String oib;
        private String birthDate;

        public Form1()
        {
            InitializeComponent();
     
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
        private void tbOIB_TextChanged(object sender, EventArgs e)
        {
            this.oib = tbOIB.Text;
        }
        private void tvName_TextChanged(object sender, EventArgs e)
        {
           this.name = tvName.Text;
        }
        private void tvSurname_TextChanged(object sender, EventArgs e)
        {
            this.surname = tvSurname.Text;
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        private void dtpBirthDate_ValueChanged(object sender, EventArgs e)
        {
            this.birthDate = dtpBirthDate.Value.ToString();
        }

        private void btnShowAll_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-ODT1EBT\SQLEXPRESS;Initial Catalog=stuslu;Integrated Security=True");
            conn.Open();

            string statement;
            statement = "SELECT * FROM student";
     
            SqlDataAdapter dataAdapter = new SqlDataAdapter(statement, conn);
            DataTable dt = new DataTable();

            dataAdapter.Fill(dt);
            dgvData.DataSource = dt;

            conn.Close();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-ODT1EBT\SQLEXPRESS;Initial Catalog=stuslu;Integrated Security=True");
            conn.Open();
            string statement;
            StringBuilder builder = new StringBuilder();
            builder.Append("SELECT * FROM student AS s ");
            bool flag = false;
            if (rbtnFemale.Checked)
            {
                flag = true;
                builder.Append("WHERE s.spol='F'");
            }
            else if (rbtnMale.Checked)
            {
                flag = true;
                builder.Append("WHERE s.spol='M'");
            }
            if (!String.IsNullOrEmpty(name))
            {
                if (flag == true)
                {
                    builder.Append(" AND s.ime='" + name + "'");
                }
                else
                {
                    flag = true;
                    builder.Append("WHERE s.ime='" + name + "'");
                }

            }
            if (!String.IsNullOrEmpty(surname))
            {
                if (flag == true)
                {
                    builder.Append(" AND s.prezime='" + surname + "'");
                }
                else
                {
                    builder.Append("WHERE s.prezime='" + surname + "'");
                }

            }
            statement = builder.ToString();
            MessageBox.Show(statement);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(statement, conn);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            dgvData.DataSource = dt;
            conn.Close();

        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-ODT1EBT\SQLEXPRESS;Initial Catalog=stuslu;Integrated Security=True");
            connection.Open();
            StringBuilder builder = new StringBuilder();
            builder.Append("INSERT INTO student(mbr,ime,prezime,datRod,spol) VALUES(");
            if (!String.IsNullOrEmpty(tbOIB.Text))
            {
                builder.Append("'" + oib + "',");
            }

            if (!String.IsNullOrEmpty(tvName.Text))
            {
                builder.Append("'" + name + "',");
            }
            if (!String.IsNullOrEmpty(tvSurname.Text))
            {
                builder.Append("'" + surname + "',");
            }
            builder.Append("'" + dtpBirthDate.Value.Year + "." + dtpBirthDate.Value.Month + "." + dtpBirthDate.Value.Day + "',");
            if (rbtnMale.Checked)
            {
                builder.Append("'M')");
            }
            else if (rbtnFemale.Checked)
            {
                builder.Append("'F')");
            }
            string statement = builder.ToString();
            MessageBox.Show(statement);
            SqlCommand command = new SqlCommand(statement, connection);
            command.ExecuteNonQuery();
            connection.Close();

        }

        private void btnSearchBySurname_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-ODT1EBT\SQLEXPRESS;Initial Catalog=stuslu;Integrated Security=True");
            connection.Open();
            string statement = "SELECT * FROM student AS s ORDER BY s.prezime ASC";
            SqlDataAdapter adapter = new SqlDataAdapter(statement, connection);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            dgvData.DataSource = dt;
            connection.Close();
        }

    }

}

