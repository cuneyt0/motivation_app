import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../view/language_view.dart';
import '../viewmodel/language_viewmodel.dart';

mixin LanguageRoute on AppRouter {
  Future<dynamic> showLanguage() async {
    final view = widgetLanguage();
    return push(view);
  }

  Widget widgetLanguage() {
    final viewModel = Provider.of<LanguageViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    return LanguageView(viewModel: viewModel);
  }
}
