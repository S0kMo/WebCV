import 'package:flutter/material.dart';
import 'package:webcv/rotuing/route_names.dart';
import 'package:webcv/views/about/about_view.dart';
import 'package:webcv/views/contact/contact_view.dart';
import 'package:webcv/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _pageRoute(HomeView());
    case AboutRoute:
      return _pageRoute(AboutView());
    case PortfolioRoute:
    //return _pageRoute(PortfolioView());
    case ContactRoute:
      return _pageRoute(ContactView());
    default:
      return _pageRoute(HomeView());
  }
}

PageRoute _pageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
    : super(
        pageBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) => child,
        transitionsBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) => FadeTransition(opacity: animation, child: child),
      );
}
