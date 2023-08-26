import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:motivation_quotes/gen/locale_keys.g.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/language_viewmodel.dart';

class LanguageView extends BaseViewProtocol<LanguageViewModel> {
  const LanguageView({Key? key, required LanguageViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<LanguageViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          appBar: AppBar(
            title: Text(LocaleKeys.language_title.tr()),
          ),
          body: ListView.builder(
            itemCount: consumer.languages.length ?? 0,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () => consumer.seletedLanguage(index),
                  title: Text(consumer.languages[index].tr()),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
