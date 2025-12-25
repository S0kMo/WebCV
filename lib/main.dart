// nh mij dg nh tver tam youtube dea ng 😐
import 'package:flutter/material.dart';
import 'package:webcv/constants/app_theme.dart';
import 'package:webcv/views/home/home_view.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme(),
      home: HomeView());
  }
}

