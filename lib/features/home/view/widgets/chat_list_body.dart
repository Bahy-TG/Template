import 'package:flutter/material.dart';
import '../../../../core/fake_data/list_chat_model.dart';
import 'custom_list_tile.dart';

class ChatListBody extends StatelessWidget {
  const ChatListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (context, index) {
        return CustomListTile(chatModel: chatList[index]);
      }),
    );
  }
}