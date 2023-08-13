import 'package:motivation_quotes/app/screen/home/route/home_router.dart';
import 'package:motivation_quotes/app/screen/name_generator/route/name_generator_router.dart';
import 'package:motivation_quotes/app/screen/name_generator/viewmodel/name_generator_viewmodel.dart';
import 'package:motivation_quotes/app/screen/text_style/route/text_style_router.dart';
import 'package:motivation_quotes/app/screen/text_style/viewmodel/text_style_viewmodel.dart';
import 'package:motivation_quotes/core/theme/core/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../app/screen/home/viewmodel/home_viewmodel.dart';

class MultiProviderList {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => ThemeManager()),
    ChangeNotifierProvider(create: (context) => HomeViewModel(HomeRouter())),
    ChangeNotifierProvider(
        create: (context) => NameGeneratorViewModel(NameGeneratorRouter())),
    ChangeNotifierProvider(
        create: (context) => TextStyleViewModel(TextStyleRouter())),
  ];
}
