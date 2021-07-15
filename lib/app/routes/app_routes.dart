part of 'app_pages.dart';


/// A chunks of routes and the path names which will be used to create
/// routes in [AppPages].
abstract class AppRoutes{
  static const home = _Paths.home;
  static const onBoarding = _Paths.onBoarding;
  static const product = _Paths.product;
  static const login = _Paths.login;
}

abstract class _Paths{
  static const home = '/home';
  static const onBoarding = '/on_boarding';
  static const login = '/login';
  static const product = '/product';
}