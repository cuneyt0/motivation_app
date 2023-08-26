import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../view/category_view.dart';
import '../viewmodel/category_viewmodel.dart';

mixin CategoryRoute on AppRouter {
  Future<dynamic> showCategory() async {
    final view = widgetCategory();

    return push(view);
  }

  Widget widgetCategory() {
    final viewModel = Provider.of<CategoryViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    return CategoryView(viewModel: viewModel);
  }
}
