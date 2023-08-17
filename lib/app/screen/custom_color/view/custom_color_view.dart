import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:motivation_quotes/core/extension/color_extension.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/custom_color_viewmodel.dart';

class CustomColorView extends BaseViewProtocol<CustomColorViewModel> {
  const CustomColorView({Key? key, required CustomColorViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<CustomColorViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Arka plan Seç"),
          ),
          body: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 0),
            itemBuilder: (context, index) =>
                _bodyList(context, consumer)[index],
            itemCount: _bodyList(context, consumer).length,
          ),
        );
      },
    );
  }

  List<Widget> _bodyList(BuildContext context, CustomColorViewModel consumer) =>
      [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10, left: 5),
              child: AutoSizeText(
                "Renkler",
                style: TextStyle(fontSize: 18, color: Colors.black),
                maxLines: 2,
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height *
                    (MediaQuery.of(context).size.height < 800 ? 0.18 : 0.23),
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    final color = consumer.allColors[index];

                    return InkWell(
                      onTap: () => consumer.ontap(color),
                      child: Card(
                        color: color,
                        child: Center(
                          child: Text(
                            "Abc",
                            style: TextStyle(
                              color: CustomTextColor.getTextColor(color),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: consumer.allColors.length,
                )),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10, left: 5),
              child: AutoSizeText(
                "Resimler",
                style: TextStyle(fontSize: 18, color: Colors.black),
                maxLines: 2,
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height *
                    (MediaQuery.of(context).size.height < 800 ? 0.18 : 0.23),
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => consumer.selectImage(consumer.images[index]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5), // Image border
                        child: SizedBox.fromSize(
                            child: Image.asset(
                          consumer.images[index],
                          fit: BoxFit.cover,
                        )),
                      ),
                    );
                  },
                  itemCount: consumer.images.length,
                )),
          ],
        ),
      ];
}
