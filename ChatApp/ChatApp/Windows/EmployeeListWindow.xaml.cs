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
using System.Windows.Shapes;

namespace ChatApp.Windows
{
    /// <summary>
    /// Логика взаимодействия для EmployeeListWindow.xaml
    /// </summary>
    public partial class EmployeeListWindow : Window
    {
        public EmployeeListWindow()
        {
            InitializeComponent();
            Refresh();
        }
        private void Refresh()
        {
            List<Model.Employee> employees = MainWindow.db.Employee.ToList();
            if (CBAdmin.IsChecked == true)
                employees = employees.Where(c => c.DepartmentId == 1).ToList();
            if (CBITHelpDesk.IsChecked == true)
                employees = employees.Where(c => c.DepartmentId == 2).ToList();
            if (CBSales.IsChecked == true)
                employees = employees.Where(c => c.DepartmentId == 3).ToList();
            if (CBMarketing.IsChecked == true)
                employees = employees.Where(c => c.DepartmentId == 4).ToList();
            employees = employees.Where(c => c.Name.ToLower().Contains(TBSearch.Text.ToLower())).ToList();
            DGEmployee.ItemsSource = null;
            DGEmployee.ItemsSource = employees;
        }
        private void CBAdmin_Checked(object sender, RoutedEventArgs e)
        {
            Refresh();
        }

        private void CBITHelpDesk_Checked(object sender, RoutedEventArgs e)
        {
            Refresh();
        }

        private void CBSales_Checked(object sender, RoutedEventArgs e)
        {
            Refresh();
        }

        private void CBMarketing_Checked(object sender, RoutedEventArgs e)
        {
            Refresh();
        }
    }
}
