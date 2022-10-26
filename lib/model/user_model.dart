
 class User {
  final String? name;
  final String? profileImageUrl;

  const User({
   this.name,
     this.profileImageUrl,
  });
}


class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required  this.messageType});
}

List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Try Add something to appear in chat?", messageType: "sender"),
  ];

List<User>userData=const[
   User(name:'Abdo'
   ,profileImageUrl: '' ),
   User(name:'Mohmed'
   ,profileImageUrl: '' ),
   User(name:'Ali'
   ,profileImageUrl: '' ),
   User(name:'adel'
   ,profileImageUrl: '' ),
User(name:'maher'
   ,profileImageUrl: '' ),
   User(name:'rady'
   ,profileImageUrl: '' ),
];