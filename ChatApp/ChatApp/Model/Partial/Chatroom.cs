using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChatApp.Model
{
    public partial class Chatroom
    {
        public string lastMessage
        {
            get
            {
                return ChatMessage.LastOrDefault().Date.ToString();
            }
        }
    }
}
