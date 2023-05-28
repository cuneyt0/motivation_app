import 'package:name_generator/core/navigation/navigation.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/router.dart';
import '../view/home_view.dart';
import '../viewmodel/home_viewmodel.dart';

mixin HomeRoute on AppRouter {
  Future<dynamic> showHome() async {
    var viewModel = Provider.of<HomeViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = HomeView(viewModel: viewModel);
    return push(view);
  }
}
