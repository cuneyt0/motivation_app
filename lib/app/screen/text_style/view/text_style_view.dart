import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:name_generator/core/extension/size_extension.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/base_view.dart';
import '../../../../core/theme/core/theme_manager.dart';
import '../viewmodel/text_style_viewmodel.dart';

class TextStyleView extends BaseViewProtocol<TextStyleViewModel> {
  const TextStyleView({Key? key, required TextStyleViewModel viewModel})
      : super(viewModel, key: key);

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget startView(BuildContext context, ThemeManager theme) {
    return Consumer<TextStyleViewModel>(
      builder: (_, consumer, widget) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Text Style"),
          ),
          body: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 30),
            padding: EdgeInsets.only(
                top: context.screenHeight(.01),
                left: 10,
                right: 10,
                bottom: 50),
            itemBuilder: (context, index) =>
                _bodyList(context, consumer)[index],
            itemCount: _bodyList(context, consumer).length,
          ),
        );
      },
    );
  }

  List<Widget> _bodyList(BuildContext context, TextStyleViewModel consumer) => [
        TextFormField(
          controller: consumer.nameController,
          onChanged: consumer.controllerOnChanged,
          decoration: const InputDecoration(hintText: "İsim Giriniz"),
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(height: 30),
          padding: EdgeInsets.only(
              top: context.screenHeight(.01), left: 0, right: 0, bottom: 10),
          itemBuilder: (context, index) => _textList(context, consumer)[index],
          itemCount: _textList(context, consumer).length,
        ),
      ];
}

List<Widget> _textList(BuildContext context, TextStyleViewModel consumer) => [
      _text(
        consumer,
        context,
        GoogleFonts.nosifer(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.sacramento(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.notoSansCherokee(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.ralewayDots(
            color: Colors.white,
            fontSize: 30,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.rubikMoonrocks(
            color: Colors.white,
            fontSize: 30,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.rubikPuddles(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.pacifico(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.gantari(
            color: Colors.white,
            fontSize: 35,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.smokum(
            color: Colors.white,
            fontSize: 30,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.greatVibes(
            color: Colors.white,
            fontSize: 30,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.pressStart2p(
            color: Colors.white,
            fontSize: 20,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.blakaInk(
            color: Colors.white,
            fontSize: 35,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.babylonica(
            color: Colors.white,
            fontSize: 35,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.splash(
            color: Colors.white,
            fontSize: 30,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.rubikBeastly(
            color: Colors.white,
            fontSize: 30,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.fleurDeLeah(
            color: Colors.white,
            fontSize: 35,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.bungeeSpice(
            color: Colors.white,
            fontSize: 35,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.tourney(
            color: Colors.white,
            fontSize: 35,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.butcherman(
            color: Colors.white,
            fontSize: 35,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.nabla(
            color: Colors.white,
            fontSize: 35,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.princessSofia(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.monofett(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.unifrakturCook(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.rubikDirt(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.tiroTamil(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.eater(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
        consumer,
        context,
        GoogleFonts.waitingForTheSunrise(
            color: Colors.white,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
    ];

ExpansionTile _text(
    TextStyleViewModel consumer, BuildContext context, TextStyle textStyle) {
  return ExpansionTile(
    collapsedShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    childrenPadding: const EdgeInsets.only(top: 20),
    backgroundColor: Colors.blueAccent,
    collapsedBackgroundColor: Colors.blueAccent,
    title: Text(
      consumer.nameController.text,
      style: textStyle,
    ),
    children: const [Text("asdasdasd")],
  );
}
