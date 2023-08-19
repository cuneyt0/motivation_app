import 'package:motivation_quotes/core/utilities/cache_manager.dart';

class Motivation {
  String? note;
  String? author;
  bool? favorite;

  Motivation({this.note, this.author, this.favorite = false}) {
    CacheManager.instance.getFavorite().then((value) {
      value?.forEach((element) {
        if (note == element) {
          favorite = true;
        } else {
          favorite = false;
        }
      });
    });
  }
}
