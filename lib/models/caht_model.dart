class ChatModel {
  final String imageUrl;
  final String chat;
  final String time;
  final String userName;
  String? unRead;

  ChatModel({
    required this.imageUrl,
    required this.chat,
    required this.time,
    required this.userName,
    this.unRead,
  });
}
