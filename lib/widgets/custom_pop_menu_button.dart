import 'package:flutter/material.dart';

import '../core/style/app_text.dart';
import 'custom_pop_menu_item.dart';

class CustomPopMenuButton extends StatelessWidget {
  const CustomPopMenuButton({
    super.key,
    required this.title1,
    required this.title2,
    this.title3,
  });

  final String title1;
  final String title2;
  final String? title3;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      position: PopupMenuPosition.under,
      itemBuilder: (context) => [
        customPopMenuItem(title: title1, onTap: () {}),
        customPopMenuItem(title: title2, onTap: () {}),
        if(title3 != null)
          customPopMenuItem(title: title3!, onTap: () {}),

      ],
    );
  }
}
