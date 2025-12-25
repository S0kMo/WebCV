import 'package:flutter/material.dart';
import 'package:webcv/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:webcv/widgets/navigation_drawer/drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.black87,
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 80)],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem(title: 'Home', icon: Icons.home),
          DrawerItem(title: 'About', icon: Icons.person),
          DrawerItem(title: 'Portfolio', icon: Icons.work),
          DrawerItem(title: 'Contact', icon: Icons.contact_mail),
        ],
      ),
    );
  }
}
