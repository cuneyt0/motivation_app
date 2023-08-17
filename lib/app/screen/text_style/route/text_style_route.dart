import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../view/text_style_view.dart';
import '../viewmodel/text_style_viewmodel.dart';

mixin TextStyleRoute on AppRouter {
  Future<dynamic> showTextStyle() async {
    var viewModel = Provider.of<TextStyleViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = TextStyleView(viewModel: viewModel);
    return push(view);
  }
}
