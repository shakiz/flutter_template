import 'package:flutter_template/presentation/home/home_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL_ROUTE = AppRoutes.APP_ROUTE_HOME;

  static final routes = [
    GetPage(
        name: AppRoutes.APP_ROUTE_HOME,
        page: () => const MyHomePage(),
        transition: Transition.fade),
  ];
}
