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
        boxShadow: [BoxShadow(blurRadius: 80)],
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
            title: 'Projects',
          ),
          DrawerItem(
            icon: Icons.contact_mail,
            navigationPath: ContactRoute,
            title: 'Contact',
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.copyright, size: 12, color: Colors.grey[700]),
                  const SizedBox(width: 4),
                  Text(
                    'Made by S0kMo',
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
