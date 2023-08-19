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

  Future<bool> removeTpe() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(CacheManagerKey.type.toString());

    return true;
  }

  Future<bool> saveImage(String? image) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(CacheManagerKey.image.toString(), image.toString());

    return true;
  }

  Future<String?> getImage() async {
    final SharedPreferences prefs = await _prefs;
    var a = prefs.getString(CacheManagerKey.image.toString());
    print("$a");
    return a;
  }

  Future<bool> removeImage() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(CacheManagerKey.image.toString());
    return true;
  }

  Future<bool> saveColor(String? color) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(CacheManagerKey.color.toString(), color.toString());

    return true;
  }

  Future<String?> getColor() async {
    final SharedPreferences prefs = await _prefs;
    var a = prefs.getString(CacheManagerKey.color.toString());

    return a;
  }

  Future<bool> removeColor() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(CacheManagerKey.color.toString());
    return true;
  }

  Future<bool> saveOption(bool? option) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setBool(CacheManagerKey.option.toString(), option ?? false);

    return true;
  }

  Future<bool?> getOption() async {
    final SharedPreferences prefs = await _prefs;
    var a = prefs.getBool(CacheManagerKey.option.toString());
    print("$a");
    return a;
  }

  Future<bool> removeOption() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(CacheManagerKey.option.toString());
    return true;
  }

  Future<bool> removeAllData() async {
    await removeTpe();
    await removeColor();
    await removeImage();
    await removeOption();
    return true;
  }
}

enum CacheManagerKey { type, image, color, option }
