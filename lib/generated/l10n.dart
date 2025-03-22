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

  /// `Already have an account?`
  String get haveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Please enter a valid name`
  String get validName {
    return Intl.message(
      'Please enter a valid name',
      name: 'validName',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get validPhone {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'validPhone',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get validEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'validEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid password`
  String get validPassword {
    return Intl.message(
      'Please enter a valid password',
      name: 'validPassword',
      desc: '',
      args: [],
    );
  }

  /// `Signup Successful`
  String get signupSuccessful {
    return Intl.message(
      'Signup Successful',
      name: 'signupSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations, you have signed up successfully!`
  String get congratulations {
    return Intl.message(
      'Congratulations, you have signed up successfully!',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message('Continue', name: 'continueText', desc: '', args: []);
  }

  /// `Got it`
  String get GotIt {
    return Intl.message('Got it', name: 'GotIt', desc: '', args: []);
  }

  /// `Password Confirmation`
  String get passwordConfirm {
    return Intl.message(
      'Password Confirmation',
      name: 'passwordConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!`
  String get signupNow {
    return Intl.message(
      'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
      name: 'signupNow',
      desc: '',
      args: [],
    );
  }

  /// `DocDoc`
  String get docDoc {
    return Intl.message('DocDoc', name: 'docDoc', desc: '', args: []);
  }

  /// `Hi`
  String get hi {
    return Intl.message('Hi', name: 'hi', desc: '', args: []);
  }

  /// `How Are You Today?`
  String get howRU {
    return Intl.message(
      'How Are You Today?',
      name: 'howRU',
      desc: '',
      args: [],
    );
  }

  /// `Book and\nschedule with\nnearest doctor`
  String get book {
    return Intl.message(
      'Book and\nschedule with\nnearest doctor',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Find Nearby`
  String get findNearby {
    return Intl.message('Find Nearby', name: 'findNearby', desc: '', args: []);
  }

  /// `Doctor's specialty`
  String get specialty {
    return Intl.message(
      'Doctor\'s specialty',
      name: 'specialty',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get seeAll {
    return Intl.message('See All', name: 'seeAll', desc: '', args: []);
  }

  /// `Doctor Recommendation`
  String get recommendation {
    return Intl.message(
      'Doctor Recommendation',
      name: 'recommendation',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
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
