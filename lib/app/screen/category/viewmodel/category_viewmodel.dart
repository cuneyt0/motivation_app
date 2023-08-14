import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/screen/home/viewmodel/home_viewmodel.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/src/dictionaries/education_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/general_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/positive_thinking_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/quotes_love.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/category_router.dart';

class CategoryViewModel extends BaseViewModel<CategoryRouter> {
  CategoryViewModel(
    CategoryRouter router,
  ) : super(router);

  HomeViewModel? homeViewModel;

  List<Category> get nameList => _name;
  final List<Category> _name = [
    Category(name: "Genel", color: Colors.purple),
    Category(name: "Eğitim", color: Colors.green),
    Category(name: "Positif Düşünme", color: Colors.greenAccent),
    Category(name: "Aşk", color: Colors.red),
  ];

  onTap(int index) {
    switch (index) {
      case 0:
        homeViewModel
          ?..dataList = quotesGeneral
          ..changedState();

        break;
      case 1:
        homeViewModel
          ?..dataList = quotesEducation
          ..changedState();

        break;
      case 2:
        homeViewModel
          ?..dataList = quotesPositiveThinking
          ..changedState();

        notifty();
        break;
      case 3:
        CacheManager.instance.saveType(ListType.sevgi);
        homeViewModel
          ?..dataList = quotesLove
          ..changedState();

        break;

      default:
    }
    notifty();
    router.close();
  }
}

class Category {
  String? name;
  Color? color;

  Category({this.color, this.name});
}
