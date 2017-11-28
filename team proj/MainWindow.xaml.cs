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
        List<Garage> Garages;
        public MainWindow()
        {
            InitializeComponent();
            Garages = new List<Garage>();
            Garages.Add(new Garage("Гараж №3", 113.2));
            Garages.Add(new Garage("Гараж №127", 251.1));
            Garages.Add(new Garage("Гараж №56", 23.4));
            Garages.Add(new Garage("Гараж №91", 98.7));
            Garages.Add(new Garage("Гараж №77", 61.5));
            lvGarages.ItemsSource = Garages;
        }

        private void tbSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
                lvGarages.ItemsSource = Garages.Where(a => a.Name.Contains(tbSearch.Text));
        }
    }
}
