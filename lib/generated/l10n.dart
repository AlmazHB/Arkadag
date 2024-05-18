// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Categories`
  String get kategoriyalar {
    return Intl.message(
      'Categories',
      name: 'kategoriyalar',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get ahlisi {
    return Intl.message(
      'All',
      name: 'ahlisi',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get halanlarym {
    return Intl.message(
      'Favorites',
      name: 'halanlarym',
      desc: '',
      args: [],
    );
  }

  /// `Read`
  String get Okayanlarym {
    return Intl.message(
      'Read',
      name: 'Okayanlarym',
      desc: '',
      args: [],
    );
  }

  /// `Book volume`
  String get Tomlar {
    return Intl.message(
      'Book volume',
      name: 'Tomlar',
      desc: '',
      args: [],
    );
  }

  /// `Red Book`
  String get gyzyl_kitap {
    return Intl.message(
      'Red Book',
      name: 'gyzyl_kitap',
      desc: '',
      args: [],
    );
  }

  /// `Constitution`
  String get konstitusiya {
    return Intl.message(
      'Constitution',
      name: 'konstitusiya',
      desc: '',
      args: [],
    );
  }

  /// `Books`
  String get kitaplar {
    return Intl.message(
      'Books',
      name: 'kitaplar',
      desc: '',
      args: [],
    );
  }

  /// `Articles`
  String get makalalar {
    return Intl.message(
      'Articles',
      name: 'makalalar',
      desc: '',
      args: [],
    );
  }

  /// `Continue with us`
  String get biz_bilen_dowam_edin {
    return Intl.message(
      'Continue with us',
      name: 'biz_bilen_dowam_edin',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get gizlin_soz {
    return Intl.message(
      'Password',
      name: 'gizlin_soz',
      desc: '',
      args: [],
    );
  }

  /// `Private room`
  String get sahsy_otag {
    return Intl.message(
      'Private room',
      name: 'sahsy_otag',
      desc: '',
      args: [],
    );
  }

  /// `About the user`
  String get ulanyjy_barada {
    return Intl.message(
      'About the user',
      name: 'ulanyjy_barada',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get gurallar {
    return Intl.message(
      'Settings',
      name: 'gurallar',
      desc: '',
      args: [],
    );
  }

  /// `We are there`
  String get biz_barada {
    return Intl.message(
      'We are there',
      name: 'biz_barada',
      desc: '',
      args: [],
    );
  }

  /// `Leaving the room`
  String get otagdan_cykmak {
    return Intl.message(
      'Leaving the room',
      name: 'otagdan_cykmak',
      desc: '',
      args: [],
    );
  }

  /// `Dark mode`
  String get garanky_tema {
    return Intl.message(
      'Dark mode',
      name: 'garanky_tema',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get diller {
    return Intl.message(
      'Languages',
      name: 'diller',
      desc: '',
      args: [],
    );
  }

  /// `Author`
  String get awtor {
    return Intl.message(
      'Author',
      name: 'awtor',
      desc: '',
      args: [],
    );
  }

  /// `Reading`
  String get okamak {
    return Intl.message(
      'Reading',
      name: 'okamak',
      desc: '',
      args: [],
    );
  }

  /// `Listening`
  String get dinlemek {
    return Intl.message(
      'Listening',
      name: 'dinlemek',
      desc: '',
      args: [],
    );
  }

  /// `Audio book`
  String get audio_kitap {
    return Intl.message(
      'Audio book',
      name: 'audio_kitap',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'tk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
