import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/screen/home/viewmodel/home_viewmodel.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';

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
    Category(
      name: "Spor",
      color: Colors.blue,
    ),
  ];

  onTap(int index) async {
    switch (index) {
      case 0:
        await CacheManager.instance.saveType(ListType.general);
        homeViewModel?.changedState();
        break;
      case 1:
        await CacheManager.instance.saveType(ListType.education);
        homeViewModel?.changedState();
        break;
      case 2:
        await CacheManager.instance.saveType(ListType.possitive);
        homeViewModel?.changedState();
        break;
      case 3:
        await CacheManager.instance.saveType(ListType.love);
        homeViewModel?.changedState();
        break;
      case 4:
        await CacheManager.instance.saveType(ListType.sport);
        homeViewModel?.changedState();
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
