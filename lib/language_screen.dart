import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization_app/core/locale_keys.dart';
import 'package:flutter_localization_app/core/localization.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: Center(child: Text(LocaleKeys.hello.tr())),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      title: Text(LocaleKeys.appbarTitle.tr()),
      actions: [
        IconButton(
          onPressed: () {
            if (context.locale.toString().split('_').first == 'tr') {
              context.setLocale(AppLocalization.locales.first);
            } else {
              context.setLocale(AppLocalization.locales.last);
            }
          },
          icon: const Icon(Icons.language),
        ),
      ],
    );
  }
}
