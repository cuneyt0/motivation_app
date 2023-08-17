import 'package:motivation_quotes/src/dictionaries/base_motivition_quotes.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ListType {
  general,
  love,
  education,
  possitive,
  sport,
  changeAndDevelopment,
  passion
}

class CacheManager {
  static CacheManager instance = CacheManager();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<bool> saveType(ListType? type) async {
    BaseMotivationQuotes myInstance = BaseMotivationQuotes.getInstance();

    final SharedPreferences prefs = await _prefs;

    await prefs.setString(CacheManagerKey.type.toString(), type.toString());
    myInstance.setListType(type);
    return true;
  }

  Future<ListType?> getType() async {
    final SharedPreferences prefs = await _prefs;
    var a = prefs.getString(CacheManagerKey.type.toString());

    switch (a) {
      case 'ListType.general':
        return ListType.general;
      case 'ListType.love':
        return ListType.love;
      case 'ListType.education':
        return ListType.education;
      case 'ListType.possitive':
        return ListType.possitive;
      case 'ListType.changeAndDevelopment':
        return ListType.changeAndDevelopment;
      case 'ListType.passion':
        return ListType.passion;

      default:
        return null;
    }
  }

  Future<bool> removeAllData() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(CacheManagerKey.type.toString());
    return true;
  }
}

enum CacheManagerKey { type }
