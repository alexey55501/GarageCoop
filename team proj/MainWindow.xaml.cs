using System;
using System.Collections.Generic;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace team_proj
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

                foreach (DataGridColumn column in datagrid1.Columns)
                {
                    column.Width = new DataGridLength(1.0, DataGridLengthUnitType.Star);
                    column.MinWidth = 130;
                }
            /* Тестовое добавление */
            //List<Garage_ListViewItem> garages = new List<Garage_ListViewItem>();
            //garages.Add(new Garage_ListViewItem("Гараж №1", -55.8));
            //garages.Add(new Garage_ListViewItem("Гараж №5", 75.1));
            //garages.Add(new Garage_ListViewItem("Гараж №13", 0.00));
            //lvGarages.ItemsSource = garages;
        }

        private void tbSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            /* Код, получающий выборку исходя из введенного в текстбокс текста */
            //lvGarages.ItemsSource = Garages.Where(a => a.Name.Contains(tbSearch.Text));
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
