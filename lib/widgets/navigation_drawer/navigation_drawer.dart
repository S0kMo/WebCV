import 'package:flutter/material.dart';
import 'package:webcv/rotuing/route_names.dart';
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
          DrawerItem(
            icon: Icons.home,
            navigationPath: HomeRoute,
            title: 'Home',
          ),
          DrawerItem(
            icon: Icons.person,
            navigationPath: AboutRoute,
            title: 'About',
          ),
          DrawerItem(
            icon: Icons.work,
            navigationPath: PortfolioRoute,
            title: 'Portfolio',
          ),
          DrawerItem(
            icon: Icons.contact_mail,
            navigationPath: ContactRoute,
            title: 'Contact',
          ),
        ],
      ),
    );
  }
}
