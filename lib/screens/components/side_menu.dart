import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // It enables scrolling
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo4.png'),
            ),
            DrawerListTile(
              title: 'Dashboard',
              ionicon: Ionicons.speedometer_outline,
              press: () {},
            ),
            DrawerListTile(
              title: 'Transaction',
              ionicon: Ionicons.stats_chart_outline,
              press: () {},
            ),
            DrawerListTile(
              title: 'Docuemnts',
              ionicon: Ionicons.document_outline,
              press: () {},
            ),
            DrawerListTile(
              title: 'Store',
              ionicon: Ionicons.cart_outline,
              press: () {},
            ),
            DrawerListTile(
              title: 'Notifications',
              ionicon: Ionicons.notifications_outline,
              press: () {},
            ),
            DrawerListTile(
              title: 'Profile',
              ionicon: Ionicons.person_outline,
              press: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              ionicon: Ionicons.cog_outline,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.ionicon,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData ionicon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 8.0,
      leading: Icon(
        ionicon,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
