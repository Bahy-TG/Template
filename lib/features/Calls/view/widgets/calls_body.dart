import 'package:flutter/material.dart';
import 'package:test_app/core/style/app_text.dart';
import 'package:test_app/features/Calls/view/widgets/calls_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/style/color.dart';

class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        callsAppBar(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppText.svgImage,
                width: double.infinity,
                height: 400,
              ),
              const Text(
                'Make private calls',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'Stay connected with secure video and audio calls',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.grey,
                ),
              ),
              Text(
                'to any device',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
