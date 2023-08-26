import 'package:flutter/material.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/gen/locale_keys.g.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/category_router.dart';

class CategoryViewModel extends BaseViewModel<CategoryRouter> {
  CategoryViewModel(
    CategoryRouter router,
  ) : super(router);

  List<Category> get nameList => _name;
  final List<Category> _name = [
    Category(name: LocaleKeys.category_title_general, color: Colors.purple),
    Category(name: LocaleKeys.category_title_favorite, color: Colors.cyan),
    Category(name: LocaleKeys.category_title_education, color: Colors.green),
    Category(
        name: LocaleKeys.category_title_positive_think,
        color: Colors.greenAccent),
    Category(name: LocaleKeys.category_title_love, color: Colors.red),
    Category(name: LocaleKeys.category_title_sport, color: Colors.blue),
    Category(
        name: LocaleKeys.category_title_changeAndDevelopment,
        color: Colors.pinkAccent),
    Category(name: LocaleKeys.category_title_passion, color: Colors.pink),
  ];

  void onTap(int index) async {
    switch (index) {
      case 0:
        await CacheManager.instance.saveType(ListType.general);
        notifty();
        router.showSplash();
        break;
      case 1:
        router.showMyFavorite();
        break;
      case 2:
        await CacheManager.instance.saveType(ListType.education);
        notifty();
        router.showSplash();
        break;
      case 3:
        await CacheManager.instance.saveType(ListType.possitive);
        notifty();
        router.showSplash();
        break;
      case 4:
        await CacheManager.instance.saveType(ListType.love);
        notifty();
        router.showSplash();
        break;
      case 5:
        await CacheManager.instance.saveType(ListType.sport);
        notifty();
        router.showSplash();
        break;
      case 6:
        await CacheManager.instance.saveType(ListType.changeAndDevelopment);
        notifty();
        router.showSplash();
        break;
      default:
        await CacheManager.instance.saveType(ListType.passion);
        notifty();
        router.showSplash();
        break;
    }
  }
}

class Category {
  String? name;
  Color? color;

  Category({this.color, this.name});
}
