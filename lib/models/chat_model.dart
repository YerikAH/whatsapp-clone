class ChatModel {
  String avatar;
  String name;
  final message;
  String time;
  String date;
  bool isTyping;
  int countMessage;

  ChatModel({
    required this.avatar,
    required this.name,
    this.message,
    required this.time,
    required this.date,
    required this.isTyping,
    required this.countMessage,
  });
}