import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s11_preferences/providers/themes_provider.dart';
import 'package:s11_preferences/shared_preferences/user_preferences.dart';
import 'routing/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await UserPreferences.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ThemesProvider(isDarkMode: UserPreferences.isDarkMode)
        )
      ],
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemesProvider>(context).currentTheme
    );
  }

}