import 'package:flutter/material.dart';
import 'package:webcv/locator.dart';
import 'package:webcv/rotuing/route_names.dart';
import 'package:webcv/services/navigation_service.dart';

class NavbarLogo extends StatefulWidget {
  const NavbarLogo({super.key});

  @override
  State<NavbarLogo> createState() => _NavbarLogoState();
}

class _NavbarLogoState extends State<NavbarLogo> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(HomeRoute);
      },
      child: SizedBox(
        height: 70,
        width: 100,
        child: Image.asset('assets/tree_logo.png'),
      ),
    );
  }
}