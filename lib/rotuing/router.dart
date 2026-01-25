// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:webcv/rotuing/route_names.dart';
import 'package:webcv/views/about/about_view.dart';
import 'package:webcv/views/contact/contact_view.dart';
import 'package:webcv/views/home/home_view.dart';
import 'package:webcv/views/portfolio/portfolio_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _pageRoute(HomeView());
    case AboutRoute:
      return _pageRoute(AboutView());
    case PortfolioRoute:
      return _pageRoute(PortfolioView());
    case ContactRoute:
      return _pageRoute(ContactView());
    default:
      return _pageRoute(HomeView());
  }
}

PageRoute _pageRoute(Widget child) {
  return _FadeRoute(child: child);
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
            ) {
              // Create a curved animation for smoother easing
              final curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOutCubic,
              );

              // Combine fade with scale and slide effects for smoother transitions
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.05, 0),
                  end: Offset.zero,
                ).animate(curvedAnimation),
                child: ScaleTransition(
                  scale: Tween<double>(
                    begin: 0.95,
                    end: 1.0,
                  ).animate(curvedAnimation),
                  child: FadeTransition(opacity: curvedAnimation, child: child),
                ),
              );
            },
        transitionDuration: const Duration(milliseconds: 500),
        reverseTransitionDuration: const Duration(milliseconds: 500),
      );
}
