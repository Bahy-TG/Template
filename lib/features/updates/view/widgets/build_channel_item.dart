import 'package:flutter/material.dart';
import 'package:test_app/models/channel_model.dart';

class BuildChannelItem extends StatelessWidget {
  const BuildChannelItem({super.key, required this.channelModel});

  final ChannelModel channelModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        child: Icon(channelModel.icon, size: 28),
      ),
      title: Text(channelModel.name, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Text(channelModel.message, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(channelModel.time, style: const TextStyle(fontSize: 12)),
          if (channelModel.unreadCount > 0)
            Container(
              margin: const EdgeInsets.only(top: 4),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '${channelModel.unreadCount}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
    );
    ;
  }
}
