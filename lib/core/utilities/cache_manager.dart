import 'package:shared_preferences/shared_preferences.dart';

enum ListType { okul, sevgi, education, possitive }

class CacheManager {
  static CacheManager instance = CacheManager();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<bool> saveType(ListType? type) async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await _prefs;

    String? data;

    switch (type) {
      case ListType.okul:
        data = "general";
        break;
      case ListType.sevgi:
        data = "love";
        break;
      case ListType.education:
        data = "education";
        break;
      case ListType.possitive:
        data = "possitive";
        break;
      default:
    }

    await prefs.setString(CacheManagerKey.type.toString(), data.toString());

    return true;
  }

  Future<String?> getType() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(CacheManagerKey.type.toString());
  }

  Future<bool> removeAllData() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(CacheManagerKey.type.toString());
    return true;
  }
}

enum CacheManagerKey { type }
