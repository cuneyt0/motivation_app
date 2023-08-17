import 'package:motivation_quotes/app/screen/home/viewmodel/home_viewmodel.dart';

import '../../../../core/navigation/router.dart';
import '../../../../core/navigation/navigation.dart';
import 'package:provider/provider.dart';

import 'custom_color_router.dart';
import '../view/custom_color_view.dart';
import '../viewmodel/custom_color_viewmodel.dart';

mixin CustomColorRoute on AppRouter {
  Future<dynamic> showCustomColor({HomeViewModel? homeViewModel}) async {
    var viewModel = Provider.of<CustomColorViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    viewModel.homeViewModel = homeViewModel;
    final view = CustomColorView(viewModel: viewModel);

    return push(view);
  }
}
