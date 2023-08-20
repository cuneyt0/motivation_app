import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/src/dictionaries/base_motivition_quotes.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/home_router.dart';

class HomeViewModel extends BaseViewModel<HomeRouter> {
  HomeViewModel(HomeRouter router) : super(router);
  List<IconData> get iconList => [
        Icons.person,
        Icons.wb_incandescent_outlined,
        Icons.brush_outlined,
      ];
  List<Motivation>? dataList;
  int bottomNavIndex = 0;
  Color get backgroundColor => _backgroundColor ?? Colors.transparent;
  Color? _backgroundColor;
  bool? isSelectedBackgroundImage = false;
  String? get backgroundImage => _backgroundImage ?? '';
  String? _backgroundImage;
  bool isFavorite = false;
  final Random _random = Random();
  int randomIndex = 0;
  bool get isprogressHandler => _isprogressHandler;
  bool _isprogressHandler = true;
  FlutterTts? flutterTts;

  Future<void> speak(String text) async {
    switch (isprogressHandler) {
      case true:
        await flutterTts?.setLanguage('en-US'); //tr-Tr
        await flutterTts?.setPitch(1.0);
        await flutterTts?.setSpeechRate(0.4);
        await flutterTts?.speak(text);
        flutterTts?.setStartHandler(() {
          debugPrint("Çaldı");
          _isprogressHandler = false;
          notifty();
        });
        flutterTts?.setContinueHandler(() {
          debugPrint("Continiu");
        });
        flutterTts?.setProgressHandler((text, start, end, word) {
          debugPrint("Word $word");
        });
        flutterTts?.setCompletionHandler(() {
          _isprogressHandler = true;
        });
        break;

      default:
        debugPrint("Şuan Çalışıyor");
    }
  }

  void onPageChanged() {
    randomIndex = _random.nextInt(dataList?.length ?? 1);
    notifty();
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

  void initVm() async {
    flutterTts = FlutterTts();
    await CacheManager.instance.getFavorite();
    switch (isSelectedBackgroundImage) {
      case false:
        _backgroundColor =
            Color(int.tryParse('${await CacheManager.instance.getColor()}')!);
        break;
      default:
        _backgroundImage = await CacheManager.instance.getImage();
    }

    notifty();
  }

  onTap(int index) {
    bottomNavIndex = index;
    switch (bottomNavIndex) {
      case 1:
        router.showCategory(homeViewModel: this);
        notifty();
        break;
      case 2:
        router.showCustomColor(homeViewModel: this);
        notifty();
        break;
      default:
        router.showMyFavorite();
    }
    notifty();
  }

  Future<void> changedState() async {
    dataList = BaseMotivationQuotes.getInstance().list;
    isSelectedBackgroundImage = await CacheManager.instance.getOption();
    switch (isSelectedBackgroundImage) {
      case true:
        _backgroundImage = await CacheManager.instance.getImage();
        break;
      default:
        _backgroundColor =
            Color(int.tryParse('${await CacheManager.instance.getColor()}')!);
        break;
    }
    notifty();
  }

  void disposeVM() {
    flutterTts?.stop();
    super.dispose();
  }
}
