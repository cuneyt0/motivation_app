import 'package:flutter/material.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/main_navbar_router.dart';

class MainNavbarViewModel extends BaseViewModel<MainNavbarRouter> {
  MainNavbarViewModel(MainNavbarRouter router) : super(router);
  List<IconData> get iconList => [
        Icons.home,
        Icons.wb_incandescent_outlined,
        Icons.brush_outlined,
        Icons.settings,
      ];

  int bottomNavIndex = 0;

  List<Widget> screens() {
    return [_home(), _category(), _widgetCustomColor(), widgetProfile()];
  }

  Widget _home() {
    return router.widgetNewHome();
  }

  Widget _category() {
    return router.widgetCategory();
  }

  Widget widgetProfile() {
    return router.widgetProfile();
  }

  Widget _widgetCustomColor() {
    return router.widgetCustomColor();
  }

  onTap(int index) async {
    bottomNavIndex = index;
    switch (bottomNavIndex) {
      case 1:
        _category();
        break;
      case 2:
        _widgetCustomColor();
        break;
      case 3:
        widgetProfile();
        break;
      default:
        _home();
        break;
    }
    notifty();
  }
}
