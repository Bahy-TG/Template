import 'package:flutter/material.dart';
import 'package:test_app/models/caht_model.dart';

import '../../../../core/style/color.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.chatModel});

  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(
            chatModel.imageUrl,
          ),
        ),
        title: Text(
          chatModel.userName,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Text(chatModel.chat),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(chatModel.time),
            if (chatModel.unRead != null)
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Text(
                  chatModel.unRead!,
                  style: const TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.bold),
                )),
              ),
          ],
        ),
      ),
    );
  }
}
