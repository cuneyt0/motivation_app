import 'package:motivation_quotes/app/screen/category/route/category_route.dart';
import 'package:motivation_quotes/app/screen/custom_color/route/custom_color_route.dart';
import 'package:motivation_quotes/app/screen/text_style/route/text_style_route.dart';

import '../../../../core/navigation/router.dart';

class HomeRouter extends AppRouter
    with TextStyleRoute, CategoryRoute, CustomColorRoute {}
