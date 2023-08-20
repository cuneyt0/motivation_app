import 'package:easy_localization/easy_localization.dart';
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
    note: LocaleKeys.motivation_list_general_first.tr(),
    author: "Theodore Roosevelt",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_second.tr(),
    author: "Steve Jobs",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_three.tr(),
    author: "Winston Churchill",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_four.tr(),
    author: "Mahatma Gandhi",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_five.tr(),
    author: "Albert Einstein",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_six.tr(),
    author: "",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_seven.tr(),
    author: "Steve Jobs",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_eight.tr(),
    author: "",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_nine.tr(),
    author: "Charles R. Swindoll",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_ten.tr(),
    author: "Mark Twain",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_eleven.tr(),
    author: "Franklin D. Roosevelt",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_twelve.tr(),
    author: "",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_thirteen.tr(),
    author: "",
  ),
  Motivation(
    note: LocaleKeys.motivation_list_general_fourteen.tr(),
    author: "",
  ),
  ...quotesEducation,
  ...quotesLove,
  ...quotesSport,
  ...quotesChangeAndDevelopment,
  ...quotesPassion,
  ...quotesPositiveThinking
];
