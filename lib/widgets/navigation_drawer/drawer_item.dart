import 'package:flutter/material.dart';
import 'package:webcv/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String navigationPath;
  final String title; // Add title property
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
    required this.navigationPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20),
      child: Row(
        children: <Widget>[
          SizedBox(width: 10),
          Icon(icon, color: Colors.white),
          SizedBox(width: 30, height: 60),
          NavBarItem(title, navigationPath),
        ],
      ),
    );
  }
}
