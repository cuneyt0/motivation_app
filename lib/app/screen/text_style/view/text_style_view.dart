import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motivation_quotes/core/extension/size_extension.dart';
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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    copyStyledTextToClipboard(
                      context,
                      'Cüneyt',
                      GoogleFonts.nosifer(
                        color: Colors.black,
                        fontSize: 25,
                        textStyle: Theme.of(context).textTheme.displaySmall,
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    color: Colors.grey[300],
                    child: const Center(
                      child: Text(
                        'Metni Kopyala',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    pasteStyledTextFromClipboard(context);
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    color: Colors.grey[300],
                    child: const Center(
                      child: Text(
                        'Metni Yapıştır',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /* ListView.separated(
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
          ),*/
        );
      },
    );
  }

  void copyStyledTextToClipboard(
      BuildContext context, String text, TextStyle style) {
    final encodedData = jsonEncode({
      'text': text,
      'style': {
        'fontFamily': style.fontFamily,
        'fontSize': style.fontSize,
        'color': style.color?.value.toString(),
      },
    });
    Clipboard.setData(ClipboardData(text: encodedData));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Metin kopyalandı')),
    );
  }

  TextStyle parseStyleFromJson(dynamic styleData) {
    return TextStyle(
      fontFamily: GoogleFonts.nosifer().fontFamily,
      fontSize: double.parse(styleData['fontSize']),
      color: Color(int.parse(styleData['color'])),
    );
  }

  void pasteStyledTextFromClipboard(BuildContext context) async {
    ClipboardData? clipboardData =
        await Clipboard.getData(Clipboard.kTextPlain);
    if (clipboardData != null && clipboardData.text != null) {
      try {
        final decodedData = jsonDecode(clipboardData.text!);
        final text = decodedData['text'];
        final styleData = decodedData['style'];
        final style = parseStyleFromJson(styleData);

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Yapıştırılan Metin'),
              content: Text(
                text,
                style: style,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Kapat'),
                ),
              ],
            );
          },
        );
      } catch (e) {
        debugPrint('Geçersiz veri formatı');
      }
    }
  }

  List<Widget> _bodyList(BuildContext context, TextStyleViewModel consumer) => [
        TextFormField(
          controller: consumer.nameController,
          onChanged: consumer.controllerOnChanged,
          style: GoogleFonts.nosifer(
            color: Colors.black,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall,
          ),
          onTap: () {
            final style = GoogleFonts.nosifer(
              color: Colors.black,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall,
            );
            /*consumer.copyStyledTextToClipboard(
                consumer.nameController.text, style);*/
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Metin kopyalandı')),
            );
          },
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

  jsonDecode(String s) {}
}

List<Widget> _textList(BuildContext context, TextStyleViewModel consumer) => [
      CopyableText(
        text: consumer.nameController.text,
        style: GoogleFonts.nosifer(
            color: Colors.black,
            fontSize: 25,
            textStyle: Theme.of(context).textTheme.displaySmall),
      ),
      _text(
          consumer,
          context,
          GoogleFonts.nosifer(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          0),
      /*  _text(
          consumer,
          context,
          GoogleFonts.sacramento(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          1),
      _text(
          consumer,
          context,
          GoogleFonts.notoSansCherokee(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          2),
      _text(
          consumer,
          context,
          GoogleFonts.ralewayDots(
              color: Colors.white,
              fontSize: 30,
              textStyle: Theme.of(context).textTheme.displaySmall),
          3),
      _text(
          consumer,
          context,
          GoogleFonts.rubikMoonrocks(
              color: Colors.white,
              fontSize: 30,
              textStyle: Theme.of(context).textTheme.displaySmall),
          4),
      _text(
          consumer,
          context,
          GoogleFonts.rubikPuddles(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          5),
      _text(
          consumer,
          context,
          GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          6),
      _text(
          consumer,
          context,
          GoogleFonts.gantari(
              color: Colors.white,
              fontSize: 35,
              textStyle: Theme.of(context).textTheme.displaySmall),
          7),
      _text(
          consumer,
          context,
          GoogleFonts.smokum(
              color: Colors.white,
              fontSize: 30,
              textStyle: Theme.of(context).textTheme.displaySmall),
          8),
      _text(
          consumer,
          context,
          GoogleFonts.greatVibes(
              color: Colors.white,
              fontSize: 30,
              textStyle: Theme.of(context).textTheme.displaySmall),
          9),
      _text(
          consumer,
          context,
          GoogleFonts.pressStart2p(
              color: Colors.white,
              fontSize: 20,
              textStyle: Theme.of(context).textTheme.displaySmall),
          10),
      _text(
          consumer,
          context,
          GoogleFonts.blakaInk(
              color: Colors.white,
              fontSize: 35,
              textStyle: Theme.of(context).textTheme.displaySmall),
          11),
      _text(
          consumer,
          context,
          GoogleFonts.babylonica(
              color: Colors.white,
              fontSize: 35,
              textStyle: Theme.of(context).textTheme.displaySmall),
          12),
      _text(
          consumer,
          context,
          GoogleFonts.splash(
              color: Colors.white,
              fontSize: 30,
              textStyle: Theme.of(context).textTheme.displaySmall),
          13),
      _text(
          consumer,
          context,
          GoogleFonts.rubikBeastly(
              color: Colors.white,
              fontSize: 30,
              textStyle: Theme.of(context).textTheme.displaySmall),
          14),
      _text(
          consumer,
          context,
          GoogleFonts.fleurDeLeah(
              color: Colors.white,
              fontSize: 35,
              textStyle: Theme.of(context).textTheme.displaySmall),
          15),
      _text(
          consumer,
          context,
          GoogleFonts.bungeeSpice(
              color: Colors.white,
              fontSize: 35,
              textStyle: Theme.of(context).textTheme.displaySmall),
          16),
      _text(
          consumer,
          context,
          GoogleFonts.tourney(
              color: Colors.white,
              fontSize: 35,
              textStyle: Theme.of(context).textTheme.displaySmall),
          17),
      _text(
          consumer,
          context,
          GoogleFonts.butcherman(
              color: Colors.white,
              fontSize: 35,
              textStyle: Theme.of(context).textTheme.displaySmall),
          18),
      _text(
          consumer,
          context,
          GoogleFonts.nabla(
              color: Colors.white,
              fontSize: 35,
              textStyle: Theme.of(context).textTheme.displaySmall),
          19),
      _text(
          consumer,
          context,
          GoogleFonts.princessSofia(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          20),
      _text(
          consumer,
          context,
          GoogleFonts.monofett(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          21),
      _text(
          consumer,
          context,
          GoogleFonts.unifrakturCook(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          22),
      _text(
          consumer,
          context,
          GoogleFonts.rubikDirt(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          23),
      _text(
          consumer,
          context,
          GoogleFonts.tiroTamil(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          24),
      _text(
          consumer,
          context,
          GoogleFonts.eater(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          25),
      _text(
          consumer,
          context,
          GoogleFonts.waitingForTheSunrise(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall),
          26),*/
    ];

ExpansionTile _text(TextStyleViewModel consumer, BuildContext context,
    TextStyle textStyle, int index) {
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
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () => consumer.copyText(consumer.nameController.text),
              icon: const Icon(
                Icons.copy,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () => consumer.addedFavoriteList(index),
              icon: Icon(
                consumer.isSeletedList[index] == true
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () => consumer.sharedEvent(),
              icon: const Icon(
                Icons.share_rounded,
                color: Colors.white,
              )),
        ],
      )
    ],
  );
}

class CopyableText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const CopyableText({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: text));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Metin kopyalandı')),
        );
      },
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
