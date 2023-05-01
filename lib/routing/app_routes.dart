import 'package:flutter/material.dart';

import '../pages/pages.dart';

class AppRoutes {

  static const String initialRoute = HomePage.routeName;

  static final Map<String, Widget Function(BuildContext context)> routes = {
    HomePage.routeName    : (_) => const HomePage(),
    SettingsPage.routeName: (_) => const SettingsPage()
  };

}