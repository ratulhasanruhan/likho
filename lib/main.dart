import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:likho/controller/RoutesController.dart';
import 'package:likho/utils/AppTranslation.dart';
import 'package:likho/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return GetMaterialApp(
          title: "Likho",
          debugShowCheckedModeBanner: false,
          locale: Get.deviceLocale,
          fallbackLocale: const Locale('en', 'US'),
          translationsKeys: AppTranslation.translationsKeys,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: primaryColor,
                primary: primaryColor,
                brightness: Brightness.light,
            ),
            useMaterial3: true,
            fontFamily: Get.locale == const Locale('en', 'US')
                ? 'HindSiliguri'
                : 'Ador',
          ),
          getPages: appRoutes(),
          initialRoute: '/splash',
          home: child,
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.changeThemeMode(
            Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
          );
        },
        child: const Icon(Icons.light_mode_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NavigationBar(
            destinations: [
              NavigationDestination(
                icon: const Icon(Icons.home),
                label: ''.tr,
              ),
              NavigationDestination(
                icon: const Icon(Icons.search),
                label: ''.tr,
              ),
              NavigationDestination(
                icon: const Icon(Icons.notifications),
                label: ''.tr,
              ),
              NavigationDestination(
                icon: const Icon(Icons.person),
                label: ''.tr,
              ),
            ],
        ),
      ),
    );
  }
}
