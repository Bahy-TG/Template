import 'package:flutter/material.dart';
import 'package:test_app/features/home/view/widgets/chat_list_body.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../../../widgets/custom_button_navigator_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextFormField(),
        ),
                ChatListBody(),

      ],
    );
  }
}
