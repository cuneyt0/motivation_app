import 'dart:math';

import 'package:motivation_quotes/src/name_generator/config.dart';
import 'package:motivation_quotes/src/name_generator/exception/exception.dart';

class NameGenerator {
  final Config config;

  NameGenerator({required this.config});

  String generate() {
    if (config.dictionaries.isEmpty) {
      throw NameGeneratorException(
        'Please provide a dictionary\nPossible values could be adjectives, animals, colors, countries, languages, names, starWars',
      );
    }

    if (config.length <= 0) {
      throw NameGeneratorException(
        'length must be greater than 0',
      );
    }

    if (config.length > config.dictionaries.length) {
      throw NameGeneratorException(
        'length must be smaller than ${config.dictionaries.length + 1}',
      );
    }

    final generatedList = [];
    for (int i = 0; i < config.length; i++) {
      final wordList = config.dictionaries[i];
      String word = wordList[Random().nextInt(wordList.length)];

      switch (config.style) {
        case Style.lowerCase:
          word = word.toLowerCase();
          break;
        case Style.capital:
          final splitted = word.split("");
          word = splitted.first.toUpperCase() +
              splitted.getRange(1, splitted.length).toList().join();
          break;
        case Style.upperCase:
          word = word.toUpperCase();
          break;
      }
      generatedList.add(word);
    }

    return generatedList.join(config.seperator);
  }
}
