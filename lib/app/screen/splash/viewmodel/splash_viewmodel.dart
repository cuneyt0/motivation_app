import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/src/dictionaries/general_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/quotes_love.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/splash_router.dart';

class SplashViewModel extends BaseViewModel<SplashRouter> {
  SplashViewModel(SplashRouter router) : super(router);

  List<Motivation>? _dataList;
  void initVM() async {
    // await _cacheManager.removeAllData();
    Future.delayed(const Duration(milliseconds: 100)).then((value) async {
      final type = await CacheManager.instance.getType();
      print(type.toString());
      print(type.runtimeType);

      if (type == null) {
        _dataList = quotesGeneral;

        CacheManager.instance.saveType(ListType.okul);

        print("NULL");
      } else {
        if (type == 'general') {
          _dataList = quotesGeneral;

          print("ALO");
        } else if (type == "love") {
          _dataList = quotesLove;
        } else {}
        print("NULL DEĞİL");
      }
      router.showHome(dataList: _dataList);
    });
  }
}
