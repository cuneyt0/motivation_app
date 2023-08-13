import 'package:motivation_quotes/src/name_generator/dictionaries/adjectives.dart';

import 'dictionaries/names.dart';

enum Style { lowerCase, capital, upperCase }

class Config {
  /// number of words generated
  /// defaults to 3
  final int length;
  final String seperator;
  final List<List<String>> dictionaries;
  final Style style;

  Config({
    this.length = 3,
    this.seperator = '_',
    this.style = Style.lowerCase,
    required this.dictionaries,
  });

  factory Config.fallback() => Config(
        dictionaries: [adjectives, names],
      );
}
