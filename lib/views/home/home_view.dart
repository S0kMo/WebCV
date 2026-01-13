import 'package:flutter/material.dart' hide NavigationBar, NavigationDrawer;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webcv/views/home/home_content_desktop.dart';
import 'package:webcv/views/home/home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
