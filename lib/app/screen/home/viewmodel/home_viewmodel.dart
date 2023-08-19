import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/src/dictionaries/base_motivition_quotes.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/home_router.dart';

class HomeViewModel extends BaseViewModel<HomeRouter> {
  HomeViewModel(HomeRouter router) : super(router);
  List<IconData> get iconList => [
        Icons.change_circle_outlined,
        Icons.wb_incandescent_outlined,
        Icons.brush_outlined,
      ];
  List<Motivation>? dataList;
  int bottomNavIndex = 0;
  Color get backgroundColor => _backgroundColor ?? Colors.transparent;
  Color? _backgroundColor;
  bool? isSelectedBackgroundImage = false;

  String? get backgroundImage => _backgroundImage ?? '';
  String? _backgroundImage;

  void initVm() async {
    switch (isSelectedBackgroundImage) {
      case false:
        _backgroundColor =
            Color(int.tryParse('${await CacheManager.instance.getColor()}')!);
        break;
      default:
        _backgroundImage = await CacheManager.instance.getImage();
    }

    notifty();
  }

  onTap(int index) {
    bottomNavIndex = index;
    switch (bottomNavIndex) {
      case 1:
        router.showCategory(homeViewModel: this);
        notifty();
        break;
      case 2:
        router.showCustomColor(homeViewModel: this);
        notifty();
        break;
      default:
    }
    notifty();
  }

  Future<void> changedState() async {
    dataList = BaseMotivationQuotes.getInstance().list;
    isSelectedBackgroundImage = await CacheManager.instance.getOption();
    switch (isSelectedBackgroundImage) {
      case true:
        _backgroundImage = await CacheManager.instance.getImage();
        break;
      default:
        _backgroundColor =
            Color(int.tryParse('${await CacheManager.instance.getColor()}')!);
        break;
    }

    notifty();
  }
}
