import 'package:flutter/material.dart';
import 'package:test_app/core/fake_data/list_channel_model.dart';
import '../../../../core/fake_data/list_status_model.dart';
import 'build_channel_item.dart';
import 'build_status_item.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Text(
            'Status',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),

        // قسم الحالات (status)
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: statusList.length,
            itemBuilder: (BuildContext context, int index) {
              return BuildStatusItem(
                statusModel: statusList[index],
              );
            },
          ),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Channels',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),

        // قائمة القنوات
        Expanded(
          child: ListView.builder(
            itemCount: channelList.length,
            itemBuilder: (BuildContext context, int index) {
              return BuildChannelItem(channelModel: channelList[index],);
            },
          ),
        ),
      ],
    );
  }
}
