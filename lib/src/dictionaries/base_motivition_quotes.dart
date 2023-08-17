import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/core/utilities/cache_manager.dart';
import 'package:motivation_quotes/src/dictionaries/change_and_development.dart';
import 'package:motivation_quotes/src/dictionaries/education_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/general_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/passion_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/positive_thinking_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/quotes_love.dart';
import 'package:motivation_quotes/src/dictionaries/sport_quotes.dart';

class BaseMotivationQuotes {
  static BaseMotivationQuotes? _instance;
  ListType? _listType;

  List<Motivation> get list {
    switch (_listType) {
      case ListType.general:
        return quotesGeneral;
      case ListType.possitive:
        return quotesPositiveThinking;
      case ListType.education:
        return quotesEducation;
      case ListType.love:
        return quotesLove;
      case ListType.sport:
        return quotesSport;
      case ListType.changeAndDevelopment:
        return quotesChangeAndDevelopment;
      case ListType.passion:
        return quotesPassion;

      default:
        return quotesGeneral;
    }
  }

  BaseMotivationQuotes._internal();

  factory BaseMotivationQuotes.getInstance() {
    _instance ??= BaseMotivationQuotes._internal();
    return _instance!;
  }

  void setListType(ListType? type) {
    _listType = type;
  }
}
