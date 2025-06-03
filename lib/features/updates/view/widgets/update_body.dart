import 'package:flutter/material.dart';
import 'package:test_app/features/updates/view/widgets/status_body.dart';
import 'package:test_app/features/updates/view/widgets/update_app_bar.dart';
import 'package:test_app/widgets/custom_button_navigator_bar.dart';
class UpdateBody extends StatelessWidget {
  const UpdateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      updateAppBar(),
      const Expanded(child: StatusBody()),
    ],);
  }
}
