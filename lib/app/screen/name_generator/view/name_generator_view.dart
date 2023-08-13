import 'package:flutter/material.dart';
import 'package:motivation_quotes/app/screen/name_generator/viewmodel/name_generator_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';

class NameGeneratorView extends BaseViewProtocol<NameGeneratorViewModel> {
  const NameGeneratorView({Key? key, required NameGeneratorViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<NameGeneratorViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("İSİM ÜRET"),
          ),
          body: ListView(
            children: [
              Center(
                child: Text(consumer.name),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: consumer.asd,
          ),
        );
      },
    );
  }
}
