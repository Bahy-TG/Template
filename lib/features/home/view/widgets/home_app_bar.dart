import 'package:flutter/material.dart';
import 'package:test_app/core/style/app_text.dart';
import '../../../../core/style/string_style.dart';
import '../../../../widgets/custom_pop_menu_button.dart';

AppBar homeAppBar() {
  return AppBar(
    title: Text(
      AppText.chatTitle,
      style: titleStyle(color: Colors.green, textSize: 28),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
      const CustomPopMenuButton(
        title1: AppText.chatTitle1,
        title2: AppText.chatTitle2,
        title3: AppText.chatTitle3,
      ),
    ],
  );
}
