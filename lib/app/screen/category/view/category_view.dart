import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/category_viewmodel.dart';

class CategoryView extends BaseViewProtocol<CategoryViewModel> {
  const CategoryView({Key? key, required CategoryViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<CategoryViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
            appBar: AppBar(
              title: const Text("Category"),
            ),
            body: GridView.builder(
                itemCount: consumer.nameList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4 / 2,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => consumer.onTap(index),
                    child: Card(
                        color: consumer.nameList[index].color,
                        child: Center(
                          child: Text('${consumer.nameList[index].name}'),
                        )),
                  );
                }));
      },
    );
  }
}
