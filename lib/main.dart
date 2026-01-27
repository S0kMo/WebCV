// nh mij dg nh tver tam youtube dea ng 😐
import 'package:flutter/material.dart';
import 'package:webcv/constants/app_theme.dart';
import 'package:webcv/locator.dart';
import 'package:webcv/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: AppTheme.theme(),
      home: LayoutTemplate(),
    );
  }
}

