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
        SqlConnection _connection;

        public LoginWindow()
        {
            InitializeComponent();
        }

        private void bEnter_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Task.Factory.StartNew(() => {
                    _connection = new SqlConnection
                    { ConnectionString = "Data Source = 10.3.11.100; Initial Catalog = GarageDb; Integrated Security = True;" };
                    _connection.Open();
                    SqlCommand comm = new SqlCommand();

                    comm.CommandText = String.Format("Select Count(*) FROM Employee WHERE Login = '{0}' AND Password = '{1}'", tbLogin.Text, tbPassword.Text);

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
                });
               
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                _connection.Close();
            }
        }
    }
}
