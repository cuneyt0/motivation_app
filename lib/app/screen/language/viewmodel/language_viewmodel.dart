import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:motivation_quotes/core/navigation/navigation.dart';
import 'package:motivation_quotes/gen/locale_keys.g.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/language_router.dart';

class LanguageViewModel extends BaseViewModel<LanguageRouter> {
  LanguageViewModel(LanguageRouter router) : super(router);

  List<String> languages = [
    LocaleKeys.language_turkish,
    LocaleKeys.language_english
  ];

  void seletedLanguage(int? index) async {
    switch (index) {
      case 0:
        print("Türkçe");
        showDialog(
          context: Navigation.navigatorKey.currentState!.context,
          builder: (context) {
            return _dialog(yes: () async {
              await Navigation.navigatorKey.currentContext!
                  .setLocale(const Locale('tr', ''));

              notifty();

              router.showSplashPushAndRemoveAll();
            }, no: () {
              router.close();

              notifty();
            });
          },
        );
        break;
      default:
        showDialog(
          context: Navigation.navigatorKey.currentState!.context,
          builder: (context) {
            return _dialog(yes: () async {
              Navigation.navigatorKey.currentContext!
                  .setLocale(const Locale('en', ''));

              notifty();
              router.showSplashPushAndRemoveAll();
            }, no: () {
              router.close();
              notifty();
            });
          },
        );
        print("İnglizce");
    }
  }

  AlertDialog _dialog(
      {required void Function()? yes, required void Function()? no}) {
    return AlertDialog(
      title: const Text("Uyarı"),
      content: const Text(
        "Uygulama dilini değiştirmek istediğinize emin misiniz?",
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(onPressed: no, child: const Text("Hayır")),
        TextButton(onPressed: yes, child: const Text("Evet"))
      ],
    );
  }
}
// List<Locale> languages = [const Locale('tr', '')];

/**  ElevatedButton(onPressed: () {}, child: const Text("Evet")),
                ElevatedButton(onPressed: () {}, child: const Text("Hayır")) */
