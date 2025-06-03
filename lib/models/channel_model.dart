import 'package:flutter/cupertino.dart';

class ChannelModel {
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final IconData icon;

  ChannelModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.unreadCount,
      required this.icon});
}
