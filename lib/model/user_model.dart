
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
    ChatMessage(messageContent: "Hi, What is your firstname?", messageType: "receiver"),
    ChatMessage(messageContent: "Abdalla", messageType: "sender"),
    ChatMessage(messageContent: "Ok, Abdalla what is your last name", messageType: "receiver"),
    ChatMessage(messageContent: "Ahmed", messageType: "sender"),
    ChatMessage(messageContent: "Mr Abdalla Ahmed , What is your Title?", messageType:  "receiver"),
    ChatMessage(messageContent: "Flutter Developer", messageType:"sender"),
    ChatMessage(messageContent: "What the catagories you will need expert in?", messageType:"receiver"),


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