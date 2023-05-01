import 'package:flutter/material.dart';
import '../pages/pages.dart' show SettingsPage, HomePage;

class SideMenu extends StatelessWidget {

  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),

          ListTile(
            leading: const Icon(Icons.home_sharp),
            title: const Text('Home'),
            onTap: () => Navigator.pushNamed(context, HomePage.routeName)
          ),

          ListTile(
              leading: const Icon(Icons.people_alt_sharp),
              title: const Text('People'),
              onTap: () {}
          ),

          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => Navigator.pushNamed(context, SettingsPage.routeName)
          )
        ],
      )
    );
  }

}

class _DrawerHeader extends StatelessWidget {

  const _DrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/side-menu-header.jpeg'),
            fit: BoxFit.cover,
          )
      ), child: null,
    );
  }
}