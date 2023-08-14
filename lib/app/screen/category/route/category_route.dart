import 'package:motivation_quotes/app/screen/home/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../view/category_view.dart';
import '../viewmodel/category_viewmodel.dart';

mixin CategoryRoute on AppRouter {
  Future<dynamic> showCategory({HomeViewModel? homeViewModel}) async {
    var viewModel = Provider.of<CategoryViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);

    viewModel.homeViewModel = homeViewModel;
    final view = CategoryView(viewModel: viewModel);

    return push(view);
  }
}
