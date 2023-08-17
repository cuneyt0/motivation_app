import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/screen/home/viewmodel/home_viewmodel.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/custom_color_router.dart';

class CustomColorViewModel extends BaseViewModel<CustomColorRouter> {
  CustomColorViewModel(CustomColorRouter router, {this.homeViewModel})
      : super(router);
  HomeViewModel? homeViewModel;
  List<Color> get allColors => [...Colors.primaries, ...Colors.accents];

  void ontap(Color color) {
    homeViewModel?.getColor(color);
    router.close();
    notifty();
  }
}
