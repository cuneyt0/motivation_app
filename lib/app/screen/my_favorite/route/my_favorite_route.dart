import '../../../../core/navigation/router.dart';
import '../../../../core/navigation/navigation.dart';
import 'package:provider/provider.dart';

import 'my_favorite_router.dart';
import '../view/my_favorite_view.dart';
import '../viewmodel/my_favorite_viewmodel.dart';

mixin MyFavoriteRoute on AppRouter {
  Future<dynamic> showMyFavorite() async {
    var viewModel = Provider.of<MyFavoriteViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = MyFavoriteView(viewModel: viewModel);
    return push(view);
  }
}
