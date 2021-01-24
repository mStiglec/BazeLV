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
        private String birthDate;

        public Form1()
        {
            InitializeComponent();
     
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void tvName_TextChanged(object sender, EventArgs e)
        {
           this.name = tvName.Text;
        }
        private void tvSurname_TextChanged(object sender, EventArgs e)
        {
            this.surname = tvSurname.Text;
        }

        private void rbtnFemale_CheckedChanged(object sender, EventArgs e)
        {

        }
        private void rbtnMale_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        private void dtpBirthDate_ValueChanged(object sender, EventArgs e)
        {
            this.birthDate = dtpBirthDate.Value.ToString();
        }


        private void btnSearch_Click(object sender, EventArgs e)
        {
            getData();
            //getStudentsBySurname();
            //addStudent();
        }

        private void getData()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=student;Integrated Security=True");
            conn.Open();
            string statement;
            StringBuilder builder = new StringBuilder();
            builder.Append("SELECT * FROM student AS s ");
            bool flag = false;
            if (rbtnFemale.Checked)
            {
                flag = true;
                builder.Append("WHERE s.gender='F'");
            }else if (rbtnMale.Checked)
            {
                flag = true;
                builder.Append("WHERE s.gender='M'");
            }
            if (!String.IsNullOrEmpty(name))
            {
                if (flag == true)
                {
                    builder.Append(" AND s.studentName='" + name + "'");
                }
                else
                {
                    flag = true;
                    builder.Append("WHERE s.studentName='" + name + "'");
                }

            }
            if (!String.IsNullOrEmpty(surname))
            {
                if (flag == true)
                {
                    builder.Append(" AND s.studentSurname='" + surname + "'");
                }
                else
                {
                    builder.Append("WHERE s.studentSurname='" + surname + "'");
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

        private void getStudentsBySurname()
        {
            SqlConnection connection=new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=student;Integrated Security=True");
            connection.Open();
            string statement = "SELECT * FROM student AS s ORDER BY s.studentSurname ASC";
            SqlDataAdapter adapter = new SqlDataAdapter(statement,connection);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            dgvData.DataSource = dt;
            connection.Close();

        }

        private void addStudent()
        {
            SqlConnection connection = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=student;Integrated Security=True");
            connection.Open();
            StringBuilder builder = new StringBuilder();
            builder.Append("INSERT INTO student(studentID,studentName,studentSurname,dateOfBirth,gender) VALUES('0101010101',");
           
            if (!String.IsNullOrEmpty(tvName.Text))
            {
                builder.Append("'" + name + "',");
            }
            if (!String.IsNullOrEmpty(tvSurname.Text))
            {
                builder.Append("'" + surname + "',");
            }
            builder.Append("'" + dtpBirthDate.Value.Year + "." + dtpBirthDate.Value.Month + "." +dtpBirthDate.Value.Day + "',");
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
        private void insertData()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=student;Integrated Security=True");
            conn.Open();
            string statement;
            statement = "INSERT INTO city VALUES('55556','Osijek')";
            //statement = "UPDATE osobe SET ime='Perica' WHERE OIB='98765432109'";
            SqlCommand cmd = new SqlCommand(statement, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        private void updateData()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=student;Integrated Security=True");
            conn.Open();
            string statement;
            statement = "UPDATE city SET cityName='Zagreb' WHERE cityName='Osijek'";
            //statement = "UPDATE osobe SET ime='Perica' WHERE OIB='98765432109'";
            SqlCommand cmd = new SqlCommand(statement, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

       
    }

}

