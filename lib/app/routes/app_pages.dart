import 'package:get/get.dart';

import 'package:eatfastrepeat/app/modules/home/bindings/home_binding.dart';
import 'package:eatfastrepeat/app/modules/home/views/home.view.dart';
import 'package:eatfastrepeat/app/modules/login/bindings/login_binding.dart';
import 'package:eatfastrepeat/app/modules/login/views/login.view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static const LOGIN = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
