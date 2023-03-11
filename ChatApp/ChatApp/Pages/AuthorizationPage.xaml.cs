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

namespace ChatApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
        {
            InitializeComponent();
            TBLogin.Text = ChatApp.Properties.Settings.Default.Login;
            PBPassword.Text = ChatApp.Properties.Settings.Default.Password;
        }

        private void BAuthorize_Click(object sender, RoutedEventArgs e)
        {
            Model.Employee employee = MainWindow.db.Employee.FirstOrDefault(c => c.Login == TBLogin.Text && c.Password == PBPassword.Text);
            if(employee is null)
            {
                MessageBox.Show("Unkown User");
                return;
            }
            MainWindow.loggedUser = employee;
            NavigationService.Navigate(new Pages.MainMenuPage());
            if(CBRememberMe.IsChecked == true)
            {
                ChatApp.Properties.Settings.Default.Login = TBLogin.Text;
                ChatApp.Properties.Settings.Default.Password = PBPassword.Text;
                ChatApp.Properties.Settings.Default.Save();
            }
            else
            {
                ChatApp.Properties.Settings.Default.Login = null;
                ChatApp.Properties.Settings.Default.Password = null;
                ChatApp.Properties.Settings.Default.Save();
            }
        }

        private void BRegistration_Click(object sender, RoutedEventArgs e)
        {
            Windows.RegistrationWindow registrationWindow = new Windows.RegistrationWindow();
            registrationWindow.ShowDialog();
        }
    }
}
