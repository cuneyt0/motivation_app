import 'package:motivation_quotes/app/screen/name_generator/route/name_generator_router.dart';
import 'package:motivation_quotes/src/name_generator/config.dart';
import 'package:motivation_quotes/src/name_generator/dictionaries/names.dart';
import 'package:motivation_quotes/src/name_generator/exception/exception.dart';
import 'package:motivation_quotes/src/name_generator/name_generator.dart';

import '../../../../core/base/base_viewmodel.dart';

class NameGeneratorViewModel extends BaseViewModel<NameGeneratorRouter> {
  NameGeneratorViewModel(NameGeneratorRouter router) : super(router);

  String name = '';

  Future<void> asd() async {
    try {
      final generator = NameGenerator(
        config: Config(
          length: 1,
          style: Style.upperCase,
          seperator: " ",
          dictionaries: [names],
        ),
      );
      name = generator.generate();
    } on NameGeneratorException catch (e) {
      print(e.reason);
    }
    notifty();
  }
}
