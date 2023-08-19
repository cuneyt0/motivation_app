import 'package:motivation_quotes/core/utilities/cache_manager.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/my_favorite_router.dart';

class MyFavoriteViewModel extends BaseViewModel<MyFavoriteRouter> {
  MyFavoriteViewModel(MyFavoriteRouter router) : super(router);

  List<String>? myFavoriteList;

  void initVm() async {
    myFavoriteList = await CacheManager.instance.getFavorite();
    notifty();
  }
}
