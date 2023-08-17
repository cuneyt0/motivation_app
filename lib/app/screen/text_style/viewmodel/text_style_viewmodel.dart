import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/text_style_router.dart';

class TextStyleViewModel extends BaseViewModel<TextStyleRouter> {
  TextStyleViewModel(TextStyleRouter router) : super(router);

  TextEditingController nameController =
      TextEditingController(text: "İsim Giriniz");

  List<bool> isSeletedList = List.generate(27, (index) => false);

  controllerOnChanged(String? value) {
    value = nameController.text;
    notifty();
  }

  void sharedEvent() {
    Share.share(nameController.text, subject: ' Paylaş');
    notifty();
  }

  void copyText(String? data) {
    debugPrint(data);

    // pasteStyledTextFromClipboard();

    //  CopyClipBoard.copy(data);

    /**
     * 
     *  GoogleFonts.waitingForTheSunrise(
              color: Colors.white,
              fontSize: 25,
              textStyle: Theme.of(context).textTheme.displaySmall)
     */
    notifty();
  }

  void addedFavoriteList(int index) {
    isSeletedList[index] = !isSeletedList[index];
    notifty();
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
}
