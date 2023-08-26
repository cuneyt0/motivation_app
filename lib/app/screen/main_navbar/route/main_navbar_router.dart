import 'package:motivation_quotes/app/screen/category/route/category_route.dart';
import 'package:motivation_quotes/app/screen/custom_color/route/custom_color_route.dart';
import 'package:motivation_quotes/app/screen/language/route/language_route.dart';
import 'package:motivation_quotes/app/screen/my_profile/route/my_profile_route.dart';
import 'package:motivation_quotes/app/screen/new_home/route/new_home_route.dart';

import '../../../../core/navigation/router.dart';

class MainNavbarRouter extends AppRouter
    with
        CategoryRoute,
        CustomColorRoute,
        MyProfileRoute,
        LanguageRoute,
        MyProfileRoute,
        NewHomeRoute {}
