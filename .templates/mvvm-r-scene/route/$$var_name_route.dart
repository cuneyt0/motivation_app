import '../../../../core/navigation/router.dart';
import '../../../../core/navigation/navigation.dart';
import 'package:provider/provider.dart';

import '__templateName___router.dart';
import '../view/__templateName___view.dart';
import '../viewmodel/__templateName___viewmodel.dart';

mixin __templateNameToPascalCase__Route on AppRouter {
  Future<dynamic> show__templateNameToPascalCase__() async {
    var viewModel = Provider.of<__templateNameToPascalCase__ViewModel>(
        Navigation.navigatorKey.currentContext!,
        listen: false);
    final view = __templateNameToPascalCase__View(viewModel: viewModel);
    return push(view);
  }
}
