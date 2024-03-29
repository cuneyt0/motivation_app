import 'package:motivation_quotes/app/screen/category/route/category_router.dart';
import 'package:motivation_quotes/app/screen/category/viewmodel/category_viewmodel.dart';
import 'package:motivation_quotes/app/screen/custom_color/route/custom_color_router.dart';
import 'package:motivation_quotes/app/screen/custom_color/viewmodel/custom_color_viewmodel.dart';
import 'package:motivation_quotes/app/screen/language/route/language_router.dart';
import 'package:motivation_quotes/app/screen/language/viewmodel/language_viewmodel.dart';
import 'package:motivation_quotes/app/screen/main_navbar/route/main_navbar_router.dart';
import 'package:motivation_quotes/app/screen/main_navbar/viewmodel/main_navbar_viewmodel.dart';
import 'package:motivation_quotes/app/screen/my_favorite/route/my_favorite_router.dart';
import 'package:motivation_quotes/app/screen/my_favorite/viewmodel/my_favorite_viewmodel.dart';
import 'package:motivation_quotes/app/screen/my_profile/route/my_profile_router.dart';
import 'package:motivation_quotes/app/screen/my_profile/viewmodel/my_profile_viewmodel.dart';
import 'package:motivation_quotes/app/screen/new_home/route/new_home_router.dart';
import 'package:motivation_quotes/app/screen/new_home/viewmodel/new_home_viewmodel.dart';
import 'package:motivation_quotes/app/screen/splash/route/splash_router.dart';
import 'package:motivation_quotes/app/screen/splash/viewmodel/splash_viewmodel.dart';
import 'package:motivation_quotes/app/screen/text_style/route/text_style_router.dart';
import 'package:motivation_quotes/app/screen/text_style/viewmodel/text_style_viewmodel.dart';
import 'package:motivation_quotes/core/theme/core/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class MultiProviderList {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => ThemeManager()),
    ChangeNotifierProvider(
        create: (context) => TextStyleViewModel(TextStyleRouter())),
    ChangeNotifierProvider(
        create: (context) => CategoryViewModel(CategoryRouter())),
    ChangeNotifierProvider(
        create: (context) => SplashViewModel(SplashRouter())),
    ChangeNotifierProvider(
        create: (context) => CustomColorViewModel(CustomColorRouter())),
    ChangeNotifierProvider(
        create: (context) => MyFavoriteViewModel(MyFavoriteRouter())),
    ChangeNotifierProvider(
        create: (context) => MyProfileViewModel(MyProfileRouter())),
    ChangeNotifierProvider(
        create: (context) => LanguageViewModel(LanguageRouter())),
    ChangeNotifierProvider(
        create: (context) => MainNavbarViewModel(MainNavbarRouter())),
    ChangeNotifierProvider(
        create: (context) => NewHomeViewModel(NewHomeRouter())),
  ];
}
