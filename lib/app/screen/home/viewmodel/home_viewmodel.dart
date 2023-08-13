import 'dart:math';

import '../../../../core/base/base_viewmodel.dart';
import '../route/home_router.dart';

class HomeViewModel extends BaseViewModel<HomeRouter> {
  HomeViewModel(HomeRouter router) : super(router);

  void showTextStyle() {
    router.showTextStyle();
  }

  bool startAnimation = false;

  void init() {
    startAnimation = true;
    print('startAnimation $startAnimation');
    notifty();
  }

  final List<String> adjectives = [
    'Creative',
    'Innovative',
    'Dynamic',
    'Inspiring',
    'Tech',
    'Global',
    'Smart',
    'Elegant',
    'Bold',
    'Modern',
  ];
  final List<String> nouns = [
    'Solutions',
    'Ideas',
    'Ventures',
    'Labs',
    'Tech',
    'Digital',
    'Design',
    'Studios',
    'Innovation',
    'Systems',
  ];
  String? businessName = 'asd';

  final Random random = Random();
  void nameGenerator() {
    final String adjective = adjectives[random.nextInt(adjectives.length)];
    final String noun = nouns[random.nextInt(nouns.length)];
    businessName = '$adjective $noun Cüneyt ';
    print('Generated Business Name: $businessName ad');

    notifty();
  }

  void showNameGenerator() {
    router.showNameGenerator();
  }
}
