import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motivation_quotes/core/extension/color_extension.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/new_home_viewmodel.dart';

class NewHomeView extends BaseViewProtocol<NewHomeViewModel> {
  const NewHomeView({Key? key, required NewHomeViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {
    viewModel.initVM();
  }

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<NewHomeViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          body: LayoutBuilder(builder: (context, constraints) {
            return Container(
              decoration: BoxDecoration(
                color: consumer.backgroundColor,
                image: consumer.isSelectedBackgroundImage == true
                    ? DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(consumer.backgroundImage!),
                      )
                    : null, //opacity: .3
              ),
              child: PageView.builder(
                itemCount: consumer.dataList?.length,
                scrollDirection: Axis.vertical,
                onPageChanged: (value) => consumer.onPageChanged(),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child: Text(
                              consumer.dataList?[consumer.randomIndex]
                                      .getTranslatedNote(context) ??
                                  '-',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.albertSans(
                                  color: CustomTextColor.getTextColor(
                                      consumer.backgroundColor),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headlineMedium),
                            ),
                          ),
                          Text(
                              '${consumer.dataList?[consumer.randomIndex].author}'),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () => viewModel.changedFavorite(
                                      '${consumer.dataList?[consumer.randomIndex].note}'),
                                  child: Icon(
                                    consumer.dataList?[consumer.randomIndex]
                                                .favorite ==
                                            true
                                        ? Icons.favorite
                                        : Icons.favorite_outline_outlined,
                                    color: CustomTextColor.getTextColor(
                                        consumer.backgroundColor),
                                    size: 25,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () => viewModel.speak(
                                      '${consumer.dataList?[consumer.randomIndex].note}'
                                          .tr()),
                                  child: Icon(
                                    Icons.volume_up_sharp,
                                    color: CustomTextColor.getTextColor(
                                        consumer.backgroundColor),
                                    size: 25,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  );
                },
              ),
            );
          }),
        );
      },
    );
  }
}
