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

        public LoginWindow()
        {
            InitializeComponent();
            tbLogin.Focus();
        }

        private void bEnter_Click(object sender, RoutedEventArgs e)
        {
            using (GarageDbEntities gdbe = new GarageDbEntities())
            {
                Employee emp = gdbe.Employee.FirstOrDefault(a => a.Login == tbLogin.Text && a.Password == tbPassword.Password);
                if (emp == null)
                {
                    MessageBox.Show("Ошибка");
                    tbLogin.Text = tbPassword.Password = string.Empty;
                }
                else
                {
                    /* Exception here (empty database) */
                    switch (gdbe.Positions.FirstOrDefault(a => a.Id == emp.Positions.Id).Name)
                    {
                        case "Охранник":
                            /* Запуск формы охранника */
                            break;
                        case "Директор":
                            /* Запуск формы директора */
                            break;
                        default:
                            MessageBox.Show("Ошибка", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Error);
                            break;
                    }
                }
            }

        }
    }
}
