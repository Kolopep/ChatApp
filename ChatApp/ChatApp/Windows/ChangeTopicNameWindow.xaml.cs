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
    /// Логика взаимодействия для ChangeTopicNameWindow.xaml
    /// </summary>
    public partial class ChangeTopicNameWindow : Window
    {
        Model.Chatroom postChatroom;
        public ChangeTopicNameWindow(Model.Chatroom chatroom)
        {
            InitializeComponent();
        }

        private void BSave_Click(object sender, RoutedEventArgs e)
        {
            if(!string.IsNullOrWhiteSpace(TBChangeTopicName.Text))
            {
                postChatroom.Name = TBChangeTopicName.Text;
                MainWindow.db.SaveChanges();
                this.Close();
            }    
        }
    }
}
