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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }
<<<<<<< HEAD
=======

  /// `Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.`
  String get onBordingHeadText {
    return Intl.message(
      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
      name: 'onBordingHeadText',
      desc: '',
      args: [],
    );
  }

  /// `Best Doctor\nAppointment App`
  String get onBordingDetailsText {
    return Intl.message(
      'Best Doctor\nAppointment App',
      name: 'onBordingDetailsText',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onBordingButtonText {
    return Intl.message(
      'Get Started',
      name: 'onBordingButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButtonText {
    return Intl.message('Login', name: 'loginButtonText', desc: '', args: []);
  }

  /// `We're excited to have you back, can't wait to see what you've been up to since you last logged in.`
  String get loginWellcomeText {
    return Intl.message(
      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
      name: 'loginWellcomeText',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailHint {
    return Intl.message('Email', name: 'emailHint', desc: '', args: []);
  }

  /// `Password`
  String get passwordHint {
    return Intl.message('Password', name: 'passwordHint', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgetPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get loginWellcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'loginWellcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `By logging, you agree to our `
  String get loginAgrees1 {
    return Intl.message(
      'By logging, you agree to our ',
      name: 'loginAgrees1',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions `
  String get loginAgrees2 {
    return Intl.message(
      'Terms & Conditions ',
      name: 'loginAgrees2',
      desc: '',
      args: [],
    );
  }

  /// `and `
  String get loginAgrees3 {
    return Intl.message('and ', name: 'loginAgrees3', desc: '', args: []);
  }

  /// `PrivacyPolicy`
  String get loginAgrees4 {
    return Intl.message(
      'PrivacyPolicy',
      name: 'loginAgrees4',
      desc: '',
      args: [],
    );
  }

  /// `Dosen't have an account yet? `
  String get dosentHaveAccount {
    return Intl.message(
      'Dosen\'t have an account yet? ',
      name: 'dosentHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `At least 1 lowercase letter`
  String get hasLowerCase {
    return Intl.message(
      'At least 1 lowercase letter',
      name: 'hasLowerCase',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 uppercase letter`
  String get hasUpperCase {
    return Intl.message(
      'At least 1 uppercase letter',
      name: 'hasUpperCase',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 number`
  String get hasNumbers {
    return Intl.message(
      'At least 1 number',
      name: 'hasNumbers',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 character long`
  String get hasMinLength {
    return Intl.message(
      'At least 8 character long',
      name: 'hasMinLength',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 special character`
  String get hasSpecial {
    return Intl.message(
      'At least 1 special character',
      name: 'hasSpecial',
      desc: '',
      args: [],
    );
  }

  /// `Pleas Enter a Valid Email`
  String get emailValidate {
    return Intl.message(
      'Pleas Enter a Valid Email',
      name: 'emailValidate',
      desc: '',
      args: [],
    );
  }

  /// `Pleas Enter a Valid Password`
  String get passwordValidate {
    return Intl.message(
      'Pleas Enter a Valid Password',
      name: 'passwordValidate',
      desc: '',
      args: [],
    );
  }

  /// `Got it`
  String get gotIt {
    return Intl.message('Got it', name: 'gotIt', desc: '', args: []);
  }
>>>>>>> af48f335dded8633e36c10544971c80748af9bea
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
<<<<<<< HEAD
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
=======
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
>>>>>>> af48f335dded8633e36c10544971c80748af9bea
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
