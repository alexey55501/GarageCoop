using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace team_proj.Forms
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        SqlConnection _connection = null;

        public LoginWindow()
        {
            InitializeComponent();
            tbLogin.Focus();
        }

        private void bEnter_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                    _connection = new SqlConnection
                    {
                        ConnectionString = "Data Source = 10.3.11.100; Initial Catalog = GarageDb; Integrated Security = True;"
                    };
                    _connection.Open();

                    SqlCommand comm = new SqlCommand();
                    comm.CommandText = String.Format("Select Count(*) FROM Employee WHERE Login = '{0}' AND Password = '{1}'", tbLogin.Text, tbPassword.Password);
                    comm.Connection = _connection;

                    int test = (int)comm.ExecuteScalar();
                    if (test >= 1)
                    {
                        MessageBox.Show("Welcome");
                    }
                    else
                    {
                        MessageBox.Show("Wrong!");
                    }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                if(_connection != null)
                _connection.Close();
            }
        }
    }
}
