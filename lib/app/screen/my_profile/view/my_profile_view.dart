import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:motivation_quotes/gen/locale_keys.g.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/my_profile_viewmodel.dart';

class MyProfileView extends BaseViewProtocol<MyProfileViewModel> {
  const MyProfileView({Key? key, required MyProfileViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<MyProfileViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          appBar: AppBar(
            title: Text(LocaleKeys.my_favorite_appbar_title.tr()),
          ),
          body: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            itemBuilder: (context, index) =>
                _bodyList(context, consumer)[index],
            itemCount: _bodyList(context, consumer).length,
          ),
        );
      },
    );
  }

  List<Widget> _bodyList(BuildContext context, MyProfileViewModel consumer) => [
        InkWell(
          onTap: () => consumer.router.showLanguage(),
          child: Card(
            child: ListTile(
              title: AutoSizeText(LocaleKeys.language_title.tr()),
              trailing: const Icon(Icons.language_rounded),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            consumer.aboutDialog();
          },
          child: Card(
            child: ListTile(
              title: AutoSizeText(LocaleKeys.my_profile_about_information.tr()),
              trailing: const Icon(Icons.info),
            ),
          ),
        )
      ];
}
