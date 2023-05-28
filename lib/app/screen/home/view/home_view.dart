import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/home_viewmodel.dart';

class HomeView extends BaseViewProtocol<HomeViewModel> {
  const HomeView({Key? key, required HomeViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<HomeViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("HomePage"),
            actions: [
              Switch.adaptive(
                  value: consumer.switchValue,
                  onChanged: (value) => consumer.onChanged(value))
            ],
          ),
          body: Container(),
        );
      },
    );
  }
}
