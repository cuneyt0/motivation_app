import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/core/navigation/navigation.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/src/dictionaries/base_motivition_quotes.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/new_home_router.dart';

class NewHomeViewModel extends BaseViewModel<NewHomeRouter> {
  NewHomeViewModel(NewHomeRouter router) : super(router);
  List<Motivation>? get dataList => _dataList;
  List<Motivation>? _dataList;
  Color get backgroundColor => _backgroundColor ?? Colors.black;
  Color? _backgroundColor;

  bool? isSelectedBackgroundImage = true;
  String? get backgroundImage => _backgroundImage ?? '';
  String? _backgroundImage;
  final Random _random = Random();
  int randomIndex = 0;
  bool get isprogressHandler => _isprogressHandler;
  bool _isprogressHandler = true;
  FlutterTts? flutterTts;

  void initVM() async {
    print("INIT");
    //await CacheManager.instance.removeAllData();
    final type = await CacheManager.instance.getType();
    BaseMotivationQuotes.getInstance().setListType(type);
    _dataList = BaseMotivationQuotes.getInstance().list;
    isSelectedBackgroundImage = await CacheManager.instance.getOption();
    flutterTts = FlutterTts();
    await CacheManager.instance.getFavorite();
    switch (isSelectedBackgroundImage) {
      case true:
        _backgroundImage = await CacheManager.instance.getImage();
        break;
      default:
    }
    _backgroundColor =
        Color(int.tryParse('${await CacheManager.instance.getColor()}')!);

    notifty();
  }

  void onPageChanged() {
    randomIndex = _random.nextInt(dataList?.length ?? 1);
    notifty();
  }

  Future<void> speak(String text) async {
    switch (isprogressHandler) {
      case true:
        await flutterTts?.setLanguage(
            '${Navigation.navigatorKey.currentContext!.locale}'); //tr-Tr
        await flutterTts?.setPitch(1.0);
        await flutterTts?.setSpeechRate(0.4);
        await flutterTts?.speak(text);
        flutterTts?.setStartHandler(() {
          debugPrint("Started");
          _isprogressHandler = false;
          notifty();
        });
        flutterTts?.setContinueHandler(() {
          debugPrint("Continiou");
        });
        flutterTts?.setProgressHandler((text, start, end, word) {
          debugPrint("Word $word");
        });
        flutterTts?.setCompletionHandler(() {
          _isprogressHandler = true;
        });
        break;

      default:
        debugPrint("Current Listening");
    }
  }

  void changedFavorite(String? note) async {
    if (dataList?[randomIndex].favorite == true) {
      dataList?[randomIndex].favorite = false;
    } else {
      dataList?[randomIndex].favorite = true;
      await CacheManager.instance.getFavorite();
      await CacheManager.instance.saveFavorite('$note');
      await CacheManager.instance.getFavorite();
    }

    notifty();
  }
}
