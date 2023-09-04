import 'package:flutter/material.dart';
import 'package:flutter_localization_app/core/localization.dart';
import 'package:flutter_localization_app/language_screen.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLocalization.init();

  runApp(
    EasyLocalization(
      supportedLocales: AppLocalization.locales,
      path: AppLocalization.localizationJsonPath,
      fallbackLocale: AppLocalization.locales.first,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: AppLocalization.locales,
      locale: context.locale,
      title: 'Flutter Localization Demo',
      theme: ThemeData.dark(),
      home: const LanguageScreen(),
    );
  }
}
