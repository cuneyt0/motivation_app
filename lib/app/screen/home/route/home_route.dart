import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/core/navigation/navigation.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/router.dart';
import '../view/home_view.dart';
import '../viewmodel/home_viewmodel.dart';

mixin HomeRoute on AppRouter {
  Future<dynamic> showHome(
      {List<Motivation>? dataList, bool? isSelectedBackgroundImage}) async {
    var viewModel = Provider.of<HomeViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = HomeView(viewModel: viewModel);
    viewModel
      ..dataList = dataList
      ..isSelectedBackgroundImage = isSelectedBackgroundImage;

    return pushAndRemoveAll(view);
  }
}
