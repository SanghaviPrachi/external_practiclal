import 'package:flutter/material.dart';
import 'message.dart';

class MessageModel extends ChangeNotifier {
  Map<int, List<Message>> _messages = {};

  void addMessage(int chatId, Message message) {
    if (_messages.containsKey(chatId)) {
      _messages[chatId]!.insert(0, message);
    } else {
      _messages[chatId] = [message];
    }
    notifyListeners();
  }

  List<Message> getMessages(int chatId) {
    return _messages.containsKey(chatId) ? _messages[chatId]! : [];
  }
}
