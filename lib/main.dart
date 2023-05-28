import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';
import 'package:name_generator/core/navigation/navigation.dart';
import 'package:name_generator/core/navigation/router.dart';
import 'package:name_generator/core/provider/multi_provider.dart';
import 'package:name_generator/core/utilities/easy_localization/easy_localization_manager.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await GetStorage.init();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(EasyLocalization(
    path: EasyLocalizationManager.path,
    supportedLocales: EasyLocalizationManager.supportedLocales,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MultiProviderList.providers,
      child: MaterialApp(
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        home: MainRouter.startApp(),
        navigatorKey: Navigation.navigatorKey,
        builder: EasyLoading.init(),
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
