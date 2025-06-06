import 'package:flutter/material.dart';
import 'package:test_app/features/home/view/screen/home_screen.dart';
import 'package:test_app/features/updates/view/screen/update_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}