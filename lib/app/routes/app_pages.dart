import 'package:flutter_blueprint/app/modules/category/binding/category_binding.dart';
import 'package:flutter_blueprint/app/modules/home/binding/home_binding.dart';
import 'package:flutter_blueprint/app/modules/home/view/home_view.dart';
import 'package:flutter_blueprint/app/modules/login/view/login_view.dart';
import 'package:flutter_blueprint/app/modules/onboarding/binding/onboarding_binding.dart';
import 'package:flutter_blueprint/app/modules/onboarding/view/onboarding.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

/// Contains the list of pages or routes taken across the whole application.
/// This will prevent us in using context for navigation. And also providing
/// the blocs required in the next named routes.
///
/// [pages] : will contain all the pages in the application as a route
///                 and will be used in the material app.
abstract class AppPages{
  static const initial = _Paths.onBoarding;
  static var transitionDuration = const Duration(
    milliseconds: 300,
  );

  static final pages = <GetPage>[
    GetPage(
      name: _Paths.home,
      transitionDuration: transitionDuration,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: _Paths.onBoarding,
      transitionDuration: transitionDuration,
      page: () => OnBoardingScreen(),
      binding: OnBoardingBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: _Paths.login,
      transitionDuration: transitionDuration,
      page: () => LoginPage(),
      binding: LoginBinding(),
      transition: Transition.downToUp,
    ),
  ];

}