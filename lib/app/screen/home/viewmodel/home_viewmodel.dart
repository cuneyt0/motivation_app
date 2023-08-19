import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
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

  void changedState() async {
    dataList = BaseMotivationQuotes.getInstance().list;
    switch (isSelectedBackgroundImage) {
      case true:
        _backgroundImage = await CacheManager.instance.getImage();
        break;
      default:
    }

    notifty();
  }

  Color? parseColorFromString(String colorString) {
    final pattern = RegExp(r'0x[0-9a-f]+');
    final match = pattern.firstMatch(colorString);

    if (match != null) {
      final colorValue = match.group(0);
      final colorInt = int.parse(colorValue!, radix: 16);

      return Color(colorInt);
    }

    return null; // Hata durumu için null
  }

  List<Motivation>? dataList;
}
