import 'package:flutter/material.dart';
import 'package:test_app/core/style/app_text.dart';
import '../../../../core/style/string_style.dart';
import '../../../../widgets/custom_pop_menu_button.dart';

AppBar callsAppBar() {
  return AppBar(
    title: const Text(
      AppText.callsTitle,
      style: TextStyle(fontSize: 28),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
      const CustomPopMenuButton(
        title1: AppText.callsTitle1,
        title2: AppText.callsTitle2,
        title3: null,
      ),
    ],
  );
}
