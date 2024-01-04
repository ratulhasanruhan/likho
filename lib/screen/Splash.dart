import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:likho/utils/colors.dart';
import 'package:likho/widget/BigButton.dart';
import 'package:logger/logger.dart';

import 'Login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            Center(
              child: SvgPicture.asset(
                'assets/images/splash.svg',
                height: 290.h,
                width: 290.w,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'app_name'.tr,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  '.',
                  style: TextStyle(
                    color: dotPink,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              'headline'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF2C406E),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(flex: 2),
            bigButton(
                name: 'login'.tr,
                onPressed: () {
                  Get.toNamed('/login');
                },
            ),
            SizedBox(
              height: 8.h,
            ),
            TextButton(
                onPressed: (){
                  Get.updateLocale(Locale('bn', 'BD'));
                },
                child: Text(
                  'signup'.tr,
                  style: TextStyle(
                    color: Color(0xFF5B67CA),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
            ),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}
