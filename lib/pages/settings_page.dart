import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s11_preferences/providers/themes_provider.dart';

import '../shared_preferences/user_preferences.dart';
import '../widgets/widgets.dart';

class SettingsPage extends StatefulWidget {

	static const String routeName = 'settings_page';

	const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

	@override
	Widget build(BuildContext context) {
  	return Scaffold(
			appBar: AppBar(
				title: const Text('Settings'),
				centerTitle: Platform.isIOS,
			),
			drawer: const SideMenu(),
    	body: Padding(
    	  padding: const EdgeInsets.only(top: 12, left: 14, right: 14),
    	  child: SingleChildScrollView(
				child: Column(
					children: [
						SwitchListTile.adaptive(
							contentPadding: const EdgeInsets.only(left: 28, right: 16),
							value: UserPreferences.isDarkMode,
							title: const Text('DarkMode'),
							onChanged: (value) => setState(() {
								UserPreferences.isDarkMode = value;
								Provider.of<ThemesProvider>(context, listen: false).setTheme(value ? ThemesProvider.dark : ThemesProvider.light);
							})
						),
						const Divider(),
						RadioListTile(
							title: const Text('Masculino'),
							value: 1,
							groupValue: UserPreferences.gender,
							onChanged: (value) => setState(() => UserPreferences.gender = value ?? 1)
						),
						const Divider(),
						RadioListTile(
							title: const Text('Femenino'),
							value: 2,
							groupValue: UserPreferences.gender,
							onChanged: (value) => setState(() => UserPreferences.gender = value ?? 2)
						),
						const Divider(),
						Padding(
						  padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
						  child: TextFormField(
						  	initialValue: UserPreferences.name,
								decoration: const InputDecoration(
									labelText: 'Nombre',
									helperText: 'Nombre del usuario',
									hintText: 'Ingresar nombre de usuario'
								),
								onChanged: (value) => setState(() => UserPreferences.name = value)
						  ),
						)
					],
				)
			),
    	)
		);
	}
}