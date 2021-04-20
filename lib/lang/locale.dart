import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en_us.dart';
import 'tr_tr.dart';

class TranslationService extends Translations {
  static final fallbackLocale = Locale('tr', 'TR');
  @override
  Map<String, Map<String, String>> get keys => {
        'tr_TR': tr_TR,
        'en_US': en_US,
      };
}
