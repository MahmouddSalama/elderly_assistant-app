class MessageModel {
  final String uid;
  final String time;
  final String messgae;

  MessageModel({required this.uid, required this.time, required this.messgae});

  factory MessageModel.fromJson(jsonData) {
    return MessageModel(
      uid: jsonData['uid'],
      time: jsonData['time'],
      messgae: jsonData['messgae'],
    );
  }
}

class ChatModel {
  final String ids;
  final List<MessageModel> messages;

  ChatModel({required this.ids, required this.messages});

  factory ChatModel.fromJson(jsonData) {

    return ChatModel(
      ids: jsonData['ids'],
      messages: jsonData['messages'],
    );
  }
}
