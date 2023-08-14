import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/src/dictionaries/general_quotes.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/home_router.dart';

class HomeViewModel extends BaseViewModel<HomeRouter> {
  HomeViewModel(HomeRouter router) : super(router);
  List<IconData> iconList = [Icons.change_circle_rounded, Icons.add];

  int bottomNavIndex = 0;
  final CacheManager _cacheManager = CacheManager();

  onTap(int index) {
    bottomNavIndex = index;
    switch (bottomNavIndex) {
      case 1:
        router.showCategory(homeViewModel: this);
        notifty();
        break;
      default:
    }
    notifty();
  }

  void changedState() {
    notifty();
  }

  List<Motivation>? dataList;

  Future<void> initVm() async {
    // await _cacheManager.removeAllData();
    final type = await _cacheManager.getType();
    print(type.toString());
    print(type.runtimeType);

    if (type == null) {
      dataList = quotesGeneral;

      _cacheManager.saveType(ListType.okul);

      print("NULL");
    } else {
      if (type == 'general') {
        dataList = quotesGeneral;
        notifty();
        print("ALO");
      } else {
        print("DEĞİLL");
      }
      print("NULL DEĞİL");
    }
    notifty();
  }
}
