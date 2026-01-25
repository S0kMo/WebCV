import 'package:flutter/material.dart' hide NavigationBar, NavigationDrawer;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webcv/locator.dart';
import 'package:webcv/rotuing/route_names.dart';
import 'package:webcv/services/navigation_service.dart';
import 'package:webcv/widgets/centered_view/centered__view.dart';
import 'package:webcv/rotuing/router.dart';
import 'package:webcv/widgets/navigation_bar/navigation_bar.dart';
import 'package:webcv/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:webcv/widgets/video_background/video_background.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return VideoBackground(
      videoPath: 'assets/background2.mp4',
      opacity: 0.4,
      blurRadius: 0.2,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          backgroundColor: Colors.transparent,
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? const NavigationDrawer()
              : null,
          body: CenteredView(
            Column(
              children: <Widget>[
                const NavigationBar(),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
