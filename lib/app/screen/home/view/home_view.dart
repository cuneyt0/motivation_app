import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motivation_quotes/core/extension/color_extension.dart';
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
  void init() async {
    viewModel.initVm();
  }

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<HomeViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          bottomNavigationBar: AnimatedBottomNavigationBar(
              icons: consumer.iconList,
              activeColor: Colors.blue,
              activeIndex: consumer.bottomNavIndex,
              gapLocation: GapLocation.none,
              notchSmoothness: NotchSmoothness.verySmoothEdge,
              onTap: (index) => consumer.onTap(index)),
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
                onPageChanged: (value) {
                  consumer.onPageChanged();
                  print(
                      ' consumer.dataList?[consumer.randomIndex].favorite ${consumer.dataList?[consumer.randomIndex].favorite}');
                },
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
                              '${consumer.dataList?[consumer.randomIndex].note}',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.anekOdia(
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

  /**
   * 
   * AnimationLimiter(
            child: ListView.builder(
              itemCount: _bodyList(context, consumer).length,
              itemBuilder: (BuildContext context, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(seconds: 1),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: ScaleAnimation(
                      child: _bodyList(context, consumer)[index],
                    ),
                  ),
                );
              },
            ),
          ),
   */
}
