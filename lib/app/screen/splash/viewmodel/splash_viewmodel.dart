import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/src/dictionaries/base_motivition_quotes.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/splash_router.dart';

class SplashViewModel extends BaseViewModel<SplashRouter> {
  SplashViewModel(SplashRouter router) : super(router);

  List<Motivation>? _dataList;
  void initVM() async {
    // await CacheManager.instance.removeAllData();
    Future.delayed(const Duration(milliseconds: 100)).then((value) async {
      final type = await CacheManager.instance.getType();

      debugPrint(type.toString());
      debugPrint('${type.runtimeType}');

      BaseMotivationQuotes.getInstance().setListType(type);

      _dataList = BaseMotivationQuotes.getInstance().list;
      debugPrint('${_dataList?.length}');

      router.showHome(dataList: _dataList);
    });
  }
}
