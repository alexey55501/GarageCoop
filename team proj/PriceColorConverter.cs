using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Media;

namespace team_proj
{
    public class PriceColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            double price = System.Convert.ToDouble(value);
            if(price < 0)
            {
                return new SolidColorBrush(Colors.Red);
            }
            else if(price > 0)
            {
                return new SolidColorBrush(Colors.ForestGreen);
            }
            else
            {
                return new SolidColorBrush(Colors.DarkOrange);
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
