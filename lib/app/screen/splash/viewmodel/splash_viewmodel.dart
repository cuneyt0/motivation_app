import '../../../../core/base/base_viewmodel.dart';
import '../route/splash_router.dart';

class SplashViewModel extends BaseViewModel<SplashRouter> {
  SplashViewModel(SplashRouter router) : super(router);

  void initVM() async {
    // await CacheManager.instance.removeAllData();
    Future.delayed(const Duration(microseconds: 100)).then((value) async {
      router.showMainNavbar();
    });
  }
}
