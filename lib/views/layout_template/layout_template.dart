import 'package:flutter/material.dart' hide NavigationBar, NavigationDrawer;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webcv/locator.dart';
import 'package:webcv/rotuing/route_names.dart';
import 'package:webcv/services/navigation_service.dart';
import 'package:webcv/widgets/centered_view/centered__view.dart';
import 'package:webcv/rotuing/router.dart';
import 'package:webcv/widgets/navigation_bar/navigation_bar.dart';
import 'package:webcv/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

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
    );
  }
}
