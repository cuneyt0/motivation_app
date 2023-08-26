import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../view/new_home_view.dart';
import '../viewmodel/new_home_viewmodel.dart';

mixin NewHomeRoute on AppRouter {
  Future<dynamic> showNewHome() async {
    var viewModel = Provider.of<NewHomeViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = widgetNewHome();
    return push(view);
  }

  Widget widgetNewHome() {
    var viewModel = Provider.of<NewHomeViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = NewHomeView(viewModel: viewModel);

    return NewHomeView(viewModel: viewModel);
  }
}
