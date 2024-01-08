import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:likho/controller/RoutesController.dart';
import 'package:likho/screen/Dashboard.dart';
import 'package:likho/screen/Tasks.dart';
import 'package:likho/utils/AppTranslation.dart';
import 'package:likho/utils/colors.dart';

import 'controller/NavBarController.dart';

void main() {
  runApp( MyApp());
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
          initialRoute: '/home',
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

  final navController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Obx( () => Scaffold(
          body: IndexedStack(
            index: navController.selectedIndex.value,
            children: [
              Dashboard(),
              Tasks(),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.purple,
              ),
            ],
          ),
          extendBody: true,
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(bottom: 25.h, right: 25.w, left: 25.w),
            child: BottomBarCreative(
              items: [
                TabItem(
                    icon: SvgPicture.asset(
                      navController.selectedIndex == 0 ? 'assets/icons/home_selected.svg' : 'assets/icons/home.svg',
                      height: 24.h,
                      width: 24.w,
                    ),
                ),
                TabItem(
                    icon: SvgPicture.asset(
                      navController.selectedIndex == 1 ? 'assets/icons/task_selected.svg' : 'assets/icons/task.svg',
                      height: 24.h,
                      width: 24.w,
                    ),
                ),
                TabItem(
                    icon: Icon(
                      Icons.add,
                      size: 28.r,
                      color: Colors.white,
                    ),
                ),
                TabItem(
                    icon: SvgPicture.asset(
                      navController.selectedIndex == 3 ? 'assets/icons/chart_selected.svg' : 'assets/icons/chart.svg',
                      height: 24.h,
                      width: 24.w,
                    ),
                ),
                TabItem(
                    icon: SvgPicture.asset(
                      navController.selectedIndex == 4 ? 'assets/icons/profile_selected.svg' : 'assets/icons/profile.svg',
                      height: 24.h,
                      width: 24.w,
                    ),
                ),
              ],
              borderRadius: BorderRadius.circular(14.r),
              backgroundColor: Colors.white,
              color: hintTextColor,
              colorSelected: primaryColor,
              indexSelected: navController.selectedIndex.value,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFF1F6FF),
                  blurRadius: 13,
                  offset: Offset(-3, 7),
                  spreadRadius: 0,
                )
              ],
              onTap: (int index){
                navController.changeIndex(index);
              },
            ),
          ),
        ),

    );
  }
}
