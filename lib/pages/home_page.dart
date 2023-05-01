import 'dart:io';
import 'package:flutter/material.dart';
import '../shared_preferences/user_preferences.dart';
import '../widgets/widgets.dart' show SideMenu;

class HomePage extends StatelessWidget {

	static const String routeName = 'home_page';

	const HomePage({super.key});

	@override
	Widget build(BuildContext context) {
  	return Scaffold(
			appBar: AppBar(
				title: const Text('Home'),
				centerTitle: Platform.isIOS,
			),
			drawer: const SideMenu(),
    	body: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: [
					const Divider(),
					Text('isDarkMode: ${UserPreferences.isDarkMode}'),
					const Divider(),
					Text('Género: ${UserPreferences.gender}'),
					const Divider(),
					Text('Nombre de Usuario: ${UserPreferences.name}'),
					const Divider()
				],
			)
		);
	}

}