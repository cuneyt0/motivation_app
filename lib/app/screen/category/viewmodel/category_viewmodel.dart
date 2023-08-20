import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/screen/home/viewmodel/home_viewmodel.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/gen/locale_keys.g.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/category_router.dart';

class CategoryViewModel extends BaseViewModel<CategoryRouter> {
  CategoryViewModel(
    CategoryRouter router,
  ) : super(router);

  HomeViewModel? homeViewModel;

  List<Category> get nameList => _name;
  final List<Category> _name = [
    Category(
        name: LocaleKeys.category_title_general.tr(), color: Colors.purple),
    Category(name: LocaleKeys.category_title_favorite.tr(), color: Colors.cyan),
    Category(
        name: LocaleKeys.category_title_education.tr(), color: Colors.green),
    Category(
        name: LocaleKeys.category_title_positive_think.tr(),
        color: Colors.greenAccent),
    Category(name: LocaleKeys.category_title_love.tr(), color: Colors.red),
    Category(name: LocaleKeys.category_title_sport.tr(), color: Colors.blue),
    Category(
        name: LocaleKeys.category_title_changeAndDevelopment.tr(),
        color: Colors.pinkAccent),
    Category(name: LocaleKeys.category_title_passion.tr(), color: Colors.pink),
  ];

  void onTap(int index) async {
    switch (index) {
      case 0:
        await CacheManager.instance.saveType(ListType.general);
        homeViewModel?.changedState();
        notifty();
        router.close();
        break;
      case 1:
        router.showMyFavorite();
        break;
      case 2:
        await CacheManager.instance.saveType(ListType.education);
        homeViewModel?.changedState();
        notifty();
        router.close();
        break;
      case 3:
        await CacheManager.instance.saveType(ListType.possitive);
        homeViewModel?.changedState();
        notifty();
        router.close();
        break;
      case 4:
        await CacheManager.instance.saveType(ListType.love);
        homeViewModel?.changedState();
        notifty();
        router.close();
        break;
      case 5:
        await CacheManager.instance.saveType(ListType.sport);
        homeViewModel?.changedState();
        notifty();
        router.close();
        break;
      case 6:
        await CacheManager.instance.saveType(ListType.changeAndDevelopment);
        homeViewModel?.changedState();
        notifty();
        router.close();
        break;
      default:
        await CacheManager.instance.saveType(ListType.passion);
        homeViewModel?.changedState();
        notifty();
        router.close();
        break;
    }
  }
}

class Category {
  String? name;
  Color? color;

  Category({this.color, this.name});
}
