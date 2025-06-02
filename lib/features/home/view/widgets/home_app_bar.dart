import 'package:flutter/material.dart';
import 'package:test_app/core/style/app_text.dart';

AppBar homeAppBar(){
  return AppBar(
    centerTitle: true,
    title: const Text(AppText.title),
  );
}