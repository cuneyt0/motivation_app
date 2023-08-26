import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../view/custom_color_view.dart';
import '../viewmodel/custom_color_viewmodel.dart';

mixin CustomColorRoute on AppRouter {
  Future<dynamic> showCustomColor() async {
    var viewModel = Provider.of<CustomColorViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);

    final view = CustomColorView(viewModel: viewModel);

    return push(view);
  }

  Widget widgetCustomColor() {
    var viewModel = Provider.of<CustomColorViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = CustomColorView(viewModel: viewModel);

    return view;
  }
}
