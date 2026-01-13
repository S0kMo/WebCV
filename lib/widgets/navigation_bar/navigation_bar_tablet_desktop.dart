import 'package:flutter/material.dart';
import 'package:webcv/rotuing/route_names.dart';
import 'navbar_logo.dart';
import 'navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavbarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('HOME', HomeRoute),
              SizedBox(width: 60),
              NavBarItem('ABOUT', AboutRoute),
              SizedBox(width: 60),
              NavBarItem('PROJECTS', PortfolioRoute),
              SizedBox(width: 60),
              NavBarItem('CONTACTS', ContactRoute),
              SizedBox(width: 60),
            ],
          ),
        ],
      ),
    );
  }
}