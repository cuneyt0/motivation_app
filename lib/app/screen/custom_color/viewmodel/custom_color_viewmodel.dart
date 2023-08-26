import 'package:flutter/material.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/gen/assets.gen.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/custom_color_router.dart';

class CustomColorViewModel extends BaseViewModel<CustomColorRouter> {
  CustomColorViewModel(
    CustomColorRouter router,
  ) : super(router);

  List<Color> get allColors => [...Colors.primaries, ...Colors.accents];

  List<String> get images => [
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
    final value = _getValueFromExpression(color.toString());
    await CacheManager.instance.saveColor(value);
    await CacheManager.instance.saveOption(false);

    router.showSplash();

    notifty();
  }

  String? _getValueFromExpression(String expression) {
    final match = RegExp(r'Color\((0x[a-fA-F0-9]+)\)').firstMatch(expression);
    return match?.group(1);
  }

  void selectImage(String? image) async {
    await CacheManager.instance.saveImage(image);
    await CacheManager.instance.saveOption(true);

    router.showSplash();
    notifty();
  }
}
