import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/main_navbar_viewmodel.dart';

class MainNavbarView extends BaseViewProtocol<MainNavbarViewModel> {
  const MainNavbarView({Key? key, required MainNavbarViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {
    viewModel.bottomNavIndex = 0;
  }

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<MainNavbarViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          bottomNavigationBar: AnimatedBottomNavigationBar(
              icons: consumer.iconList,
              activeColor: Colors.blue,
              activeIndex: consumer.bottomNavIndex,
              gapLocation: GapLocation.none,
              notchSmoothness: NotchSmoothness.verySmoothEdge,
              onTap: (index) => consumer.onTap(index)),
          body: consumer.screens()[consumer.bottomNavIndex],
        );
      },
    );
  }
}
