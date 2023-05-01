
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {

  static const String nameKey = 'name';
  static const String isDarkModeKey = 'isDarkMode';
  static const String genderKey = 'gender';

  static late SharedPreferences _prefs;

  static String? _name;
  static bool? _isDarkMode;
  static int? _gender;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _name != null ? _name! : _prefs.getString(nameKey) ?? '';
  }

  static set name(String value) {
    _name = value;
    _prefs.setString(nameKey, value);
  }

  static bool get isDarkMode {
    return _isDarkMode != null ? _isDarkMode! : _prefs.getBool(isDarkModeKey) ?? false;
  }

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _prefs.setBool(isDarkModeKey, value);
  }

  static int get gender {
    return _gender != null ? _gender! : _prefs.getInt(genderKey) ?? 1;
  }

  static set gender(int value) {
    _gender = value;
    _prefs.setInt(genderKey, value);
  }

}