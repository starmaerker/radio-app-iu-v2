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

  /// `Hello`
  String get greeting {
    return Intl.message(
      'Hello',
      name: 'greeting',
      desc: '',
      args: [],
    );
  }

  /// `Music Request`
  String get tab_music_wish {
    return Intl.message(
      'Music Request',
      name: 'tab_music_wish',
      desc: '',
      args: [],
    );
  }

  /// `Your Moderator:`
  String get moderator {
    return Intl.message(
      'Your Moderator:',
      name: 'moderator',
      desc: '',
      args: [],
    );
  }

  /// `Currently Running:`
  String get aktuell {
    return Intl.message(
      'Currently Running:',
      name: 'aktuell',
      desc: '',
      args: [],
    );
  }

  /// `Previous Songs:`
  String get vorher {
    return Intl.message(
      'Previous Songs:',
      name: 'vorher',
      desc: '',
      args: [],
    );
  }

  /// `Desired Title`
  String get wunschtitel {
    return Intl.message(
      'Desired Title',
      name: 'wunschtitel',
      desc: '',
      args: [],
    );
  }

  /// `Artist`
  String get interpret {
    return Intl.message(
      'Artist',
      name: 'interpret',
      desc: '',
      args: [],
    );
  }

  /// `Send Music Request`
  String get mw_senden {
    return Intl.message(
      'Send Music Request',
      name: 'mw_senden',
      desc: '',
      args: [],
    );
  }

  /// `Music Request Sent.`
  String get mw_gesendet {
    return Intl.message(
      'Music Request Sent.',
      name: 'mw_gesendet',
      desc: '',
      args: [],
    );
  }

  /// `Comment (max 150 characters)`
  String get kommentar {
    return Intl.message(
      'Comment (max 150 characters)',
      name: 'kommentar',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get name {
    return Intl.message(
      'Your Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Send Feedback`
  String get fb_senden {
    return Intl.message(
      'Send Feedback',
      name: 'fb_senden',
      desc: '',
      args: [],
    );
  }

  /// `Feedback Sent.`
  String get fb_gesendet {
    return Intl.message(
      'Feedback Sent.',
      name: 'fb_gesendet',
      desc: '',
      args: [],
    );
  }

  /// `Current Playlist Rating`
  String get pl_Wertung {
    return Intl.message(
      'Current Playlist Rating',
      name: 'pl_Wertung',
      desc: '',
      args: [],
    );
  }

  /// `Current Moderator Rating`
  String get m_Wertung {
    return Intl.message(
      'Current Moderator Rating',
      name: 'm_Wertung',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Some Text`
  String get error {
    return Intl.message(
      'Please Enter Some Text',
      name: 'error',
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
      Locale.fromSubtags(languageCode: 'de'),
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
