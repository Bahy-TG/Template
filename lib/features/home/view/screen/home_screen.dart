import 'package:flutter/material.dart';
import 'package:test_app/features/home/view/widgets/home_app_bar.dart';
import 'package:test_app/features/home/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: const HomeBody(),
    );
  }
}