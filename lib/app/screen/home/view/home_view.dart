import 'package:flutter/material.dart';
import 'package:name_generator/core/extension/size_extension.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/home_viewmodel.dart';

class HomeView extends BaseViewProtocol<HomeViewModel> {
  const HomeView({Key? key, required HomeViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<HomeViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("HomePage"),
          ),
          body: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 30),
            padding: EdgeInsets.only(
                top: context.screenHeight(.1), left: 10, right: 10, bottom: 20),
            itemBuilder: (context, index) =>
                _bodyList(context, consumer)[index],
            itemCount: _bodyList(context, consumer).length,
          ),
        );
      },
    );
  }

  List<Widget> _bodyList(BuildContext context, HomeViewModel consumer) => [
        ElevatedButton(
            onPressed: () => consumer.showTextStyle(),
            child: const Text("Yazı Stilleri"))
      ];
}
