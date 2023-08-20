import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/my_favorite_viewmodel.dart';

class MyFavoriteView extends BaseViewProtocol<MyFavoriteViewModel> {
  const MyFavoriteView({Key? key, required MyFavoriteViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {
    viewModel.initVm();
  }

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<MyFavoriteViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Favoriler"),
          ),
          body: ListView.builder(
            itemCount: consumer.myFavoriteList?.length ?? 0,
            itemBuilder: (context, index) {
              return Card(
                  color: Colors.lightBlueAccent,
                  child: ListTile(
                      title: Text("${consumer.myFavoriteList?[index]}")));
            },
          ),
        );
      },
    );
  }
}
