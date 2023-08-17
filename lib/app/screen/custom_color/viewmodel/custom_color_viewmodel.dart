import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/screen/home/viewmodel/home_viewmodel.dart';
import 'package:motivation_quotes/gen/assets.gen.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/custom_color_router.dart';

class CustomColorViewModel extends BaseViewModel<CustomColorRouter> {
  CustomColorViewModel(CustomColorRouter router, {this.homeViewModel})
      : super(router);
  HomeViewModel? homeViewModel;
  List<Color> get allColors => [...Colors.primaries, ...Colors.accents];

  List<String> images = [
    Assets.images.dock.path,
    Assets.images.omid.path,
    Assets.images.sitrika.path
  ];

  void ontap(Color color) {
    homeViewModel?.getColor(color);
    router.close();
    notifty();
  }
}
