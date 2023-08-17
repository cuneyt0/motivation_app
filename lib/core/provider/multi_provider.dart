import 'package:motivation_quotes/app/screen/category/route/category_router.dart';
import 'package:motivation_quotes/app/screen/category/viewmodel/category_viewmodel.dart';
import 'package:motivation_quotes/app/screen/custom_color/route/custom_color_router.dart';
import 'package:motivation_quotes/app/screen/custom_color/viewmodel/custom_color_viewmodel.dart';
import 'package:motivation_quotes/app/screen/home/route/home_router.dart';
import 'package:motivation_quotes/app/screen/splash/route/splash_router.dart';
import 'package:motivation_quotes/app/screen/splash/viewmodel/splash_viewmodel.dart';
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
        create: (context) => TextStyleViewModel(TextStyleRouter())),
    ChangeNotifierProvider(
        create: (context) => CategoryViewModel(CategoryRouter())),
    ChangeNotifierProvider(
        create: (context) => SplashViewModel(SplashRouter())),
    ChangeNotifierProvider(
        create: (context) => CustomColorViewModel(CustomColorRouter())),
  ];
}
