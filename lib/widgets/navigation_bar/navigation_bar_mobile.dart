import 'package:flutter/material.dart';
import 'package:webcv/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          NavbarLogo(),
        ],
      ),
    );
  }
}