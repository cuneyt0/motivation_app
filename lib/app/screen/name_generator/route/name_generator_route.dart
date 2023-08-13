import 'package:motivation_quotes/app/screen/name_generator/view/name_generator_view.dart';
import 'package:motivation_quotes/app/screen/name_generator/viewmodel/name_generator_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';

mixin NameGeneratorRoute on AppRouter {
  Future<dynamic> showNameGenerator() async {
    var viewModel = Provider.of<NameGeneratorViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = NameGeneratorView(viewModel: viewModel);
    return push(view);
  }
}
