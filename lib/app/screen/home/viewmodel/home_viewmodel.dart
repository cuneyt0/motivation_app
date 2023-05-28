import '../../../../core/base/base_viewmodel.dart';
import '../route/home_router.dart';

class HomeViewModel extends BaseViewModel<HomeRouter> {
  HomeViewModel(HomeRouter router) : super(router);

  bool switchValue = false;

  onChanged(value) {
    value != value;
    switchValue = value;
    print(value);

    notifty();
  }
}
