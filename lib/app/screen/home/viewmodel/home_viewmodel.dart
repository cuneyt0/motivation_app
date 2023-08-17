import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/src/dictionaries/base_motivition_quotes.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/home_router.dart';

class HomeViewModel extends BaseViewModel<HomeRouter> {
  HomeViewModel(HomeRouter router) : super(router);
  List<IconData> iconList = [
    Icons.change_circle_outlined,
    Icons.wb_incandescent_outlined,
    Icons.brush_outlined,
  ];
  int bottomNavIndex = 0;
  Color get backgroundColor => _backgroundColor ?? Colors.white;
  Color? _backgroundColor;
  bool? isSelectedBackgroundImage = false;

  String? get backgroundImage => _backgroundImage ?? '';
  String? _backgroundImage;

  Color getColor(Color color) {
    _backgroundColor = color;

    notifty();
    return backgroundColor;
  }

  String? getImage(String? path) {
    _backgroundImage = path;

    notifty();
    return backgroundImage;
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

  void changedState() {
    dataList = BaseMotivationQuotes.getInstance().list;

    notifty();
  }

  List<Motivation>? dataList;
}
