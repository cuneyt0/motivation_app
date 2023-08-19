import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/splash_viewmodel.dart';

class SplashView extends BaseViewProtocol<SplashViewModel> {
  const SplashView({Key? key, required SplashViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {
    viewModel.initVM();
  }

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<SplashViewModel>(
      builder: (_, consumer, widget) {
        return const Scaffold(
          body: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
