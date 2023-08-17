import 'dart:math';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motivation_quotes/core/extension/color_extension.dart';
import 'package:motivation_quotes/core/extension/size_extension.dart';
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
  void init() async {}

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    Random random = Random();
    return Consumer<HomeViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          backgroundColor: consumer.backgroundColor,
          bottomNavigationBar: AnimatedBottomNavigationBar(
              icons: consumer.iconList,
              activeColor: Colors.blue,
              activeIndex: consumer.bottomNavIndex,
              gapLocation: GapLocation.none,
              notchSmoothness: NotchSmoothness.verySmoothEdge,
              onTap: (index) => consumer.onTap(index)),
          body: PageView.builder(
            itemCount: consumer.dataList?.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              int randomIndex = random.nextInt(consumer.dataList?.length ?? 1);
              return Stack(
                children: [
                  Center(
                    child: FlutterLogo(
                      size: context.screenHeight(1).toDouble(),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Text(
                          '${consumer.dataList?[randomIndex].note}',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.anekOdia(
                              color: CustomTextColor.getTextColor(
                                  consumer.backgroundColor),
                              fontSize: 25,
                              textStyle:
                                  Theme.of(context).textTheme.displaySmall),
                        ),
                      ),
                      Text('${consumer.dataList?[randomIndex].author}')
                    ],
                  ),
                ],
              );
            },
          ),
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
