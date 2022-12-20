import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/order_item/bindings/order_item_binding.dart';
import '../modules/order_item/views/order_item_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/temp_home/bindings/temp_home_binding.dart';
import '../modules/temp_home/views/temp_home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_ITEM,
      page: () => OrderItemView(),
      binding: OrderItemBinding(),
    ),
    GetPage(
      name: _Paths.TEMP_HOME,
      page: () => TempHomeView(),
      binding: TempHomeBinding(),
    ),
  ];
}
