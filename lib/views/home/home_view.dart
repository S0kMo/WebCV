import 'package:flutter/material.dart' hide NavigationBar, NavigationDrawer;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webcv/views/home/home_content_desktop.dart';
import 'package:webcv/views/home/home_content_mobile.dart';
import 'package:webcv/widgets/navigation_bar/navigation_bar.dart';
import 'package:webcv/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:webcv/widgets/centered_view/centered__view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        body: CenteredView(
          Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
