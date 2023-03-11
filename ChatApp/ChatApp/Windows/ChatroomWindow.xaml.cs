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
using System.Windows.Threading;

namespace ChatApp.Windows
{
    /// <summary>
    /// Логика взаимодействия для ChatroomWindow.xaml
    /// </summary>
    public partial class ChatroomWindow : Window
    {
        Model.Chatroom postChatroom;
        DispatcherTimer dispatcherTimer = new DispatcherTimer();
        public ChatroomWindow(Model.Chatroom chatroom)
        {
            InitializeComponent();
            postChatroom = chatroom;
            DGChatroomEmployee.ItemsSource = MainWindow.db.EmployeeChatroom.Where(c => c.ChatroomId == postChatroom.Id).Select(c => c.Employee).ToList();
            this.DataContext = postChatroom;
            RefreshTopicName();
            dispatcherTimer.Interval = TimeSpan.FromMilliseconds(1000);
            dispatcherTimer.Tick += DispatcherTimer_Tick;
            dispatcherTimer.Start();
        }

        private async void DispatcherTimer_Tick(object sender, EventArgs e)
        {
            RefreshChat();
        }
        private void RefreshChat()
        {
            LVChat.ItemsSource = null;
            LVChat.ItemsSource = MainWindow.db.ChatMessage.Where(c => c.ChatroomId == postChatroom.Id).ToList();
        }
        private void RefreshTopicName()
        {
            TBTopicName.Text = postChatroom.Name;
        }
        private void BAddUser_Click(object sender, RoutedEventArgs e)
        {
            Windows.EmployeeListWindow employeeListWindow = new EmployeeListWindow();
            employeeListWindow.ShowDialog();
            Model.Employee employee = (Model.Employee)employeeListWindow.DGEmployee.SelectedItem;
            Model.EmployeeChatroom employeeChatroom = new Model.EmployeeChatroom();
            employeeChatroom.ChatroomId = postChatroom.Id;
            employeeChatroom.EmployeeId = employee.Id;
            MainWindow.db.EmployeeChatroom.Add(employeeChatroom);
            MainWindow.db.SaveChanges();

            DGChatroomEmployee.ItemsSource = MainWindow.db.EmployeeChatroom.Where(c => c.ChatroomId == postChatroom.Id).Select(c => c.Employee).ToList();

        }

        private void BChangeTopic_Click(object sender, RoutedEventArgs e)
        {
            Windows.ChangeTopicNameWindow changeTopicNameWindow = new Windows.ChangeTopicNameWindow(postChatroom);
            changeTopicNameWindow.ShowDialog();
            RefreshTopicName();
        }

        private void BLeaveChatroom_Click(object sender, RoutedEventArgs e)
        {
            Model.EmployeeChatroom employeeChatroom = MainWindow.db.EmployeeChatroom.FirstOrDefault(c => c.ChatroomId == postChatroom.Id);
            MainWindow.db.EmployeeChatroom.Remove(employeeChatroom);
            MainWindow.db.SaveChanges();
            this.Close();
        }

        private void BSend_Click(object sender, RoutedEventArgs e)
        {
            if(string.IsNullOrWhiteSpace(TBMessage.Text))
            {
                MessageBox.Show("Enter Message");
                return;
            }
            Model.ChatMessage chatMessage = new Model.ChatMessage();
            chatMessage.ChatroomId = postChatroom.Id;
            chatMessage.EmployeeId = MainWindow.loggedUser.Id;
            chatMessage.Date = DateTime.Now;
            chatMessage.Text = TBMessage.Text;
            MainWindow.db.ChatMessage.Add(chatMessage);
            MainWindow.db.SaveChanges();
            TBMessage.Text = null;
        }
    }
}
