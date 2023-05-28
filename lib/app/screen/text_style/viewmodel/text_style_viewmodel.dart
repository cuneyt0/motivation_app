import 'package:flutter/material.dart';

import '../../../../core/base/base_viewmodel.dart';
import '../route/text_style_router.dart';

class TextStyleViewModel extends BaseViewModel<TextStyleRouter> {
  TextStyleViewModel(TextStyleRouter router) : super(router);

  TextEditingController nameController = TextEditingController();

  controllerOnChanged(String? value) {
    value = nameController.text;
    notifty();
  }
}
