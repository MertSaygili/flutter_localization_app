import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable
final class AppLocalization {
  const AppLocalization._();

  static String localizationJsonPath = 'assets/translations';
  static List<Locale> locales = [
    const Locale('en', 'US'),
    const Locale('tr', 'TR'),
  ];

  static void init() async => await EasyLocalization.ensureInitialized();
}
