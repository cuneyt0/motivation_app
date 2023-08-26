import 'package:motivation_quotes/app/model/motivation/motivation.dart';
import 'package:motivation_quotes/gen/locale_keys.g.dart';
import 'package:motivation_quotes/src/dictionaries/change_and_development.dart';
import 'package:motivation_quotes/src/dictionaries/education_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/passion_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/positive_thinking_quotes.dart';
import 'package:motivation_quotes/src/dictionaries/quotes_love.dart';
import 'package:motivation_quotes/src/dictionaries/sport_quotes.dart';

final List<Motivation> quotesGeneral = [
  Motivation(
    note: LocaleKeys.motivation_list_general_first,
    author: "Theodore Roosevelt",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_first,
    author: "Steve Jobs",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_first,
    author: "Winston Churchill",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_first,
    author: "Mahatma Gandhi",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_first,
    author: "Albert Einstein",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_first,
    author: "",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_first,
    author: "Steve Jobs",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_first,
    author: "",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_nine,
    author: "Charles R. Swindoll",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_ten,
    author: "Mark Twain",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_eleven,
    author: "Franklin D. Roosevelt",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_twelve,
    author: "",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_thirteen,
    author: "",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_fourteen,
    author: "",
  ),
  ...quotesEducation,
  ...quotesLove,
  ...quotesSport,
  ...quotesChangeAndDevelopment,
  ...quotesPassion,
  ...quotesPositiveThinking
];
