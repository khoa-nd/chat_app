import 'package:flutter/material.dart';

import '../model/chat_model.dart';

class ChatScreen extends StatelessWidget {
  final ChatModel item;

  const ChatScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChatModel item = ModalRoute.of(context)?.settings.arguments as ChatModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Text(item.chat),
      ),
    );
  }
}
