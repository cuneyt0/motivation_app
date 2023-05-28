import 'package:name_generator/app/screen/home/route/home_router.dart';
import 'package:name_generator/app/screen/text_style/route/text_style_router.dart';
import 'package:name_generator/app/screen/text_style/viewmodel/text_style_viewmodel.dart';
import 'package:name_generator/core/theme/core/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../app/screen/home/viewmodel/home_viewmodel.dart';

class MultiProviderList {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => ThemeManager()),
    ChangeNotifierProvider(create: (context) => HomeViewModel(HomeRouter())),
    ChangeNotifierProvider(
        create: (context) => TextStyleViewModel(TextStyleRouter())),
  ];
}
