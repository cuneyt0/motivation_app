import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../view/my_profile_view.dart';
import '../viewmodel/my_profile_viewmodel.dart';

mixin MyProfileRoute on AppRouter {
  Future<dynamic> showMyProfile() async {
    final view = widgetProfile();
    return push(view);
  }

  Widget widgetProfile() {
    final viewModel = Provider.of<MyProfileViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    return MyProfileView(viewModel: viewModel);
  }
}
