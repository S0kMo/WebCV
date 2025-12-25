import 'package:flutter/material.dart';

class NavbarLogo extends StatefulWidget {
  const NavbarLogo({super.key});

  @override
  State<NavbarLogo> createState() => _NavbarLogoState();
}

class _NavbarLogoState extends State<NavbarLogo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 70,
            width:  100,
            child: Image.asset('assets/tree_logo.png'),
          );
  }
}