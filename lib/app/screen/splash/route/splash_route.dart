import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../view/splash_view.dart';
import '../viewmodel/splash_viewmodel.dart';

mixin SplashRoute on AppRouter {
  Future<dynamic> showSplash() async {
    var viewModel = Provider.of<SplashViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = SplashView(viewModel: viewModel);
    return push(view);
  }

  Future<dynamic> showSplashPushAndRemoveAll() async {
    var viewModel = Provider.of<SplashViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = SplashView(viewModel: viewModel);
    return pushAndRemoveAll(view);
  }
}
