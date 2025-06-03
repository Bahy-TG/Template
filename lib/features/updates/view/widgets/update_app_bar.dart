import 'package:flutter/material.dart';
import 'package:test_app/core/style/app_text.dart';
import '../../../../core/style/string_style.dart';
import '../../../../widgets/custom_pop_menu_button.dart';

AppBar updateAppBar() {
  return AppBar(
    title: const Text(
      AppText.updateTitle,
      style:TextStyle(fontSize: 28),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.                            search)),
    const  CustomPopMenuButton(
      title1: AppText.updateTitle1,
      title2: AppText.updateTitle2,
      title3: AppText.updateTitle3,
    ),
    ],
  );
}
