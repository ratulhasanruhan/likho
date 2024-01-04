import 'package:get/get.dart';
import 'package:likho/screen/Login.dart';
import 'package:likho/screen/Splash.dart';

appRoutes() => [
  GetPage(
    name: '/splash',
    page: () => Splash(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: '/login',
    page: () => Login(),
    middlewares: [MyMiddelware()],
    transition: Transition.cupertino,
  ),
];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page!.name + ' called');

    return super.onPageCalled(page);
  }
}