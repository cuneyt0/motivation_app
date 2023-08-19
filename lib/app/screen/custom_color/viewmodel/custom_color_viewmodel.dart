import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/screen/home/viewmodel/home_viewmodel.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
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
    Assets.images.sitrika.path,
    Assets.images.sanket.path,
    Assets.images.sasha.path,
    Assets.images.raamin.path,
    Assets.images.manish.path,
    Assets.images.vlad.path,
  ];

  Future<void> ontap(Color color) async {
    final value = getValueFromExpression(color.toString());
    await CacheManager.instance.saveColor(value);
    homeViewModel
      ?..getColor(color)
      ..isSelectedBackgroundImage = false
      ..changedState();
    router.close();

    print(value);

    /*homeViewModel
      ?..isSelectedBackgroundImage = false
      ..changedState();
   */
    /**
     * 
     * homeViewModel
      ?..getColor(color)
      ..isSelectedBackgroundImage = false;
   
     */
    notifty();
  }

  String? getValueFromExpression(String expression) {
    final match = RegExp(r'Color\((0x[a-fA-F0-9]+)\)').firstMatch(expression);
    return match?.group(1);
  }

  void selectImage(String? image) async {
    await CacheManager.instance.saveImage(image);
    homeViewModel
      ?..getImage(image)
      ..isSelectedBackgroundImage = true;
    router.close();
    print(image);
    notifty();
  }
}
