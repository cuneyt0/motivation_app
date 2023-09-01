import 'package:flutter/material.dart';
import 'package:motivation_quotes/core/navigation/navigation.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/my_profile_router.dart';

class MyProfileViewModel extends BaseViewModel<MyProfileRouter> {
  MyProfileViewModel(MyProfileRouter router) : super(router);

  void aboutDialog() {
    showAboutDialog(
      context: Navigation.navigatorKey.currentState!.context,
      applicationIcon: const FlutterLogo(size: 50.0), // Uygulama logosu
      applicationName: 'Daily Motivation', // Uygulama adı
      applicationVersion: '1.0.0', // Uygulama versiyonu
      applicationLegalese: 'Tüm hakları saklıdır.', // Yasal bildiri
      children: [
        // Ekstra bilgiler veya kredi vermek istediğiniz içerik
        // const Text('Bu bir Flutter örneği.'),
      ],
    );
  }
}
