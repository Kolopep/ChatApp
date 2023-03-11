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
    /// Логика взаимодействия для MainMenuPage.xaml
    /// </summary>
    public partial class MainMenuPage : Page
    {
        public MainMenuPage()
        {
            InitializeComponent();
            TBEmployeeName.Text = "Hello, " + MainWindow.loggedUser.Name + "!";
            DGChatRooms.ItemsSource = MainWindow.db.EmployeeChatroom.Where(c => c.EmployeeId == MainWindow.loggedUser.Id).Select(c => c.Chatroom).ToList();
        }

        private void BEmployeeList_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.EmployeeListPage());
        }

        private void BCloseApplication_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void DGChatRooms_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if(DGChatRooms.SelectedItem is null)
            {
                MessageBox.Show("Select Chatroom");
                return;
            }
            Windows.ChatroomWindow chatroomWindow = new Windows.ChatroomWindow((Model.Chatroom)DGChatRooms.SelectedItem);
            chatroomWindow.ShowDialog();
            DGChatRooms.ItemsSource = null;
            DGChatRooms.ItemsSource = MainWindow.db.EmployeeChatroom.Where(c => c.EmployeeId == MainWindow.loggedUser.Id).Select(c => c.Chatroom).ToList();
        }
    }
}
