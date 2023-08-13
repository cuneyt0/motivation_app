import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motivation_quotes/src/dictionaries/education_quotes.dart';
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
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    Random random = Random();
    return Consumer<HomeViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Motivasyon Sözleri"),
          ),
          body: PageView.builder(
            itemCount: quotesEducation.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              int randomIndex = random.nextInt(quotesEducation.length);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${quotesEducation[randomIndex].note}',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.anekOdia(
                        color: Colors.black,
                        fontSize: 25,
                        textStyle: Theme.of(context).textTheme.displaySmall),
                  ),
                  Text('${quotesEducation[randomIndex].author}')
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

  List<Widget> _bodyList(BuildContext context, HomeViewModel consumer) => [
        ElevatedButton(
            onPressed: () => consumer.showTextStyle(),
            child: const Text("Yazı Stilleri")),
        ElevatedButton(
            onPressed: () => consumer.nameGenerator(),
            child: const Text("İsim Üret")),
        ElevatedButton(
            onPressed: () => consumer.showNameGenerator(),
            child: const Text("Random isim Üret")),
      ];
}
