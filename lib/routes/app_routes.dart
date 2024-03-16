// ignore_for_file: constant_identifier_names, unused_field

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  //00 COMMON
  static const INITIAL_LOADING_SCREEN = _Paths.INITIAL_LOADING_SCREEN;
  static const IMAGE_VIEWER = _Paths.IMAGE_VIEWER;
  static const PDF_VIEWER = _Paths.PDF_VIEWER;

  //01 AUTHENTICATION
  static const NO_INTERNET_SCREEN = _Paths.NO_INTERNET_SCREEN;
  static const NO_URL_SCREEN = _Paths.NO_URL_SCREEN;
  static const NO_DATA_SCREEN = _Paths.NO_DATA_SCREEN;

  //05 HOME
  static const HOME = _Paths.HOME;
  static const TERMINAL = _Paths.TERMINAL;
  static const HOME_TABLE = _Paths.HOME_TABLE;
  // static const ADMIN_PROFILE = _Paths.ADMIN_PROFILE;

  //09 SETTINGS
  static const SETTINGS = _Paths.SETTINGS;
}

abstract class _Paths {
  //00 COMMON
  static const INITIAL_LOADING_SCREEN = '/initial';
  // static const INITIAL_LOADING_SCREEN = '/initial?companyCode=\'MER201800008\'';
  // '/initial?companyCode=MER201800008&branchCode=MER201800008&languageId=3&useItems=C&userId=CSR20181013';
  static const NO_INTERNET_SCREEN = '/no-internet';
  static const NO_URL_SCREEN = '/url-notfound';
  static const NO_DATA_SCREEN = '/data-notfound';
  static const IMAGE_VIEWER = '/image-viewer';
  static const PDF_VIEWER = '/pdf-viewer';
  static const SUBSCRIPTION_INIT = '/subscription-init';
  static const BUY_USER_INIT = '/buy-user-init';
  static const BUY_USER_CHECKOUT = '/buy-user-checkout';
  static const PAYMENT_CHECKOUT = '/payment-checkout';
  static const PAYMENT_SUCCESS = '/payment-success';
  static const PAYMENT_BILL_DETAILS = '/payment-bill-details';
  static const SUBSCRIPTION_CHECKOUT = '/subscription-payment';
  //05 HOME
  // static const M_HOME = '/home';
  //  static const HOME = '$M_HOME/home';
  // static const TERMINAL = '$M_HOME/terminal';

  static const HOME = '/home';
  static const TERMINAL = '/terminal';
  // static const ADMIN_HOME = '/admin';
  // static const ADMIN_PROFILE = '$ADMIN_HOME/profile';

  static const HOME_TABLE = '/home';
  //09 SETTINGS
  static const M_SETTINGS = '/settings';
  static const SETTINGS = '$M_SETTINGS/settings';
}
