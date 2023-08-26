import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../view/main_navbar_view.dart';
import '../viewmodel/main_navbar_viewmodel.dart';

mixin MainNavbarRoute on AppRouter {
  Future<dynamic> showMainNavbar() async {
    var viewModel = Provider.of<MainNavbarViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);

    final view = MainNavbarView(viewModel: viewModel);
    return pushAndRemoveAll(view);
  }
}
