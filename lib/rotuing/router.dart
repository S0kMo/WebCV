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
