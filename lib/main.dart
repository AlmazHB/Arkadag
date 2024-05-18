
import 'package:arkadag/generated/l10n.dart';
import 'package:arkadag/theme/manager/manager.dart';
import 'package:arkadag/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:arkadag/pages/pages.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:turkmen_localization_support/turkmen_localization_support.dart';

import 'maneger/manager_locale.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
   ChangeNotifierProvider(
      create: (context) => LocaleManager(),
      child: const MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  @override
  Widget build(BuildContext context) {
    final localeManager = Provider.of<LocaleManager>(context, listen: false);
    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeManager()..init(),
      child: Consumer<ThemeManager>(
          builder: (context, ThemeManager notifier, child) {
        return MaterialApp(
          title: 'Arkadag',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: notifier.isDark ? ThemeMode.dark : ThemeMode.light,
          home: const MainControll(),
          locale:  localeManager.currentLocale,
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: L10n.appDelegates,         
        );
      }),
    );
  }
}

class L10n{
  static List<LocalizationsDelegate> appDelegates=[
    S.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    ...TkDelegates.delegates,
  ];
 
}