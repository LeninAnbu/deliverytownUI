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

  /// `Login to your account`
  String get head {
    return Intl.message(
      'Login to your account',
      name: 'head',
      desc: '',
      args: [],
    );
  }

  /// `Customer id`
  String get Customerid {
    return Intl.message(
      'Customer id',
      name: 'Customerid',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get UserName {
    return Intl.message(
      'User Name',
      name: 'UserName',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `I agree the`
  String get agree1 {
    return Intl.message(
      'I agree the',
      name: 'agree1',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get agree2 {
    return Intl.message(
      'Terms & Conditions',
      name: 'agree2',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Trip List`
  String get TripListhead {
    return Intl.message(
      'Trip List',
      name: 'TripListhead',
      desc: '',
      args: [],
    );
  }

  /// `No of Trip List`
  String get Nooftrip {
    return Intl.message(
      'No of Trip List',
      name: 'Nooftrip',
      desc: '',
      args: [],
    );
  }

  /// `Trip Number`
  String get TripNumber {
    return Intl.message(
      'Trip Number',
      name: 'TripNumber',
      desc: '',
      args: [],
    );
  }

  /// `No of Deliveries`
  String get NoofDeliveries {
    return Intl.message(
      'No of Deliveries',
      name: 'NoofDeliveries',
      desc: '',
      args: [],
    );
  }

  /// `Trip Details`
  String get TripDetailshead {
    return Intl.message(
      'Trip Details',
      name: 'TripDetailshead',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get TripDetailName {
    return Intl.message(
      'Name',
      name: 'TripDetailName',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get TripDetailAddress {
    return Intl.message(
      'Address',
      name: 'TripDetailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Confirmation`
  String get DeliveryConfirhead {
    return Intl.message(
      'Delivery Confirmation',
      name: 'DeliveryConfirhead',
      desc: '',
      args: [],
    );
  }

  /// `Go for Navigation`
  String get GoforNavigation {
    return Intl.message(
      'Go for Navigation',
      name: 'GoforNavigation',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get Start {
    return Intl.message(
      'Start',
      name: 'Start',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get DeliveryName {
    return Intl.message(
      'Name',
      name: 'DeliveryName',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get DeliveryAddress {
    return Intl.message(
      'Address',
      name: 'DeliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Attachments`
  String get DeliveryAttachments {
    return Intl.message(
      'Attachments',
      name: 'DeliveryAttachments',
      desc: '',
      args: [],
    );
  }

  /// `Image 1`
  String get DeliveryImage1 {
    return Intl.message(
      'Image 1',
      name: 'DeliveryImage1',
      desc: '',
      args: [],
    );
  }

  /// `Image 2`
  String get DeliveryImage2 {
    return Intl.message(
      'Image 2',
      name: 'DeliveryImage2',
      desc: '',
      args: [],
    );
  }

  /// `Image 3`
  String get DeliveryImage3 {
    return Intl.message(
      'Image 3',
      name: 'DeliveryImage3',
      desc: '',
      args: [],
    );
  }

  /// `Image 4`
  String get DeliveryImage4 {
    return Intl.message(
      'Image 4',
      name: 'DeliveryImage4',
      desc: '',
      args: [],
    );
  }

  /// `Image 5`
  String get DeliveryImage5 {
    return Intl.message(
      'Image 5',
      name: 'DeliveryImage5',
      desc: '',
      args: [],
    );
  }

  /// `To be Settled`
  String get Deliverysettled {
    return Intl.message(
      'To be Settled',
      name: 'Deliverysettled',
      desc: '',
      args: [],
    );
  }

  /// `Amount Received`
  String get Deliveryreceived {
    return Intl.message(
      'Amount Received',
      name: 'Deliveryreceived',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get DeliveryReset {
    return Intl.message(
      'Reset',
      name: 'DeliveryReset',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get DeliverySave {
    return Intl.message(
      'Save',
      name: 'DeliverySave',
      desc: '',
      args: [],
    );
  }

  /// `Payment Information`
  String get PaymentInfhead {
    return Intl.message(
      'Payment Information',
      name: 'PaymentInfhead',
      desc: '',
      args: [],
    );
  }

  /// `Payment Mode`
  String get PaymentMode {
    return Intl.message(
      'Payment Mode',
      name: 'PaymentMode',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get Cash {
    return Intl.message(
      'Cash',
      name: 'Cash',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get PaymentInfReset {
    return Intl.message(
      'Reset',
      name: 'PaymentInfReset',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get PaymentInfSave {
    return Intl.message(
      'Save',
      name: 'PaymentInfSave',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Confirmation`
  String get PickupConfhead {
    return Intl.message(
      'Pickup Confirmation',
      name: 'PickupConfhead',
      desc: '',
      args: [],
    );
  }

  /// `Go for Navigation`
  String get PickupGoforNav {
    return Intl.message(
      'Go for Navigation',
      name: 'PickupGoforNav',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get PickupStart {
    return Intl.message(
      'Start',
      name: 'PickupStart',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get PickupName {
    return Intl.message(
      'Name',
      name: 'PickupName',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get PickupAddress {
    return Intl.message(
      'Address',
      name: 'PickupAddress',
      desc: '',
      args: [],
    );
  }

  /// `Attachments`
  String get PickupAttachments {
    return Intl.message(
      'Attachments',
      name: 'PickupAttachments',
      desc: '',
      args: [],
    );
  }

  /// `Image 1`
  String get PickupImage1 {
    return Intl.message(
      'Image 1',
      name: 'PickupImage1',
      desc: '',
      args: [],
    );
  }

  /// `Image 2`
  String get PickupImage2 {
    return Intl.message(
      'Image 2',
      name: 'PickupImage2',
      desc: '',
      args: [],
    );
  }

  /// `Image 3`
  String get PickupImage3 {
    return Intl.message(
      'Image 3',
      name: 'PickupImage3',
      desc: '',
      args: [],
    );
  }

  /// `Image 4`
  String get PickupImage4 {
    return Intl.message(
      'Image 4',
      name: 'PickupImage4',
      desc: '',
      args: [],
    );
  }

  /// `Image 5`
  String get PickupImage5 {
    return Intl.message(
      'Image 5',
      name: 'PickupImage5',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get PickupReset {
    return Intl.message(
      'Reset',
      name: 'PickupReset',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get PickupSave {
    return Intl.message(
      'Save',
      name: 'PickupSave',
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
      Locale.fromSubtags(languageCode: 'gu'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'kn'),
      Locale.fromSubtags(languageCode: 'ml'),
      Locale.fromSubtags(languageCode: 'mr'),
      Locale.fromSubtags(languageCode: 'ta'),
      Locale.fromSubtags(languageCode: 'te'),
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
