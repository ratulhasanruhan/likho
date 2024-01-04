import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:likho/screen/emailTextField.dart';
import 'package:likho/screen/passTextField.dart';
import 'package:likho/utils/colors.dart';
import 'package:likho/utils/fontCheck.dart';
import 'package:likho/widget/BigButton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 2,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Text(
                'login'.tr,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Spacer(flex: 1,),
            emailTextField(
                emailController: emailController,
                name: '${'email'.tr} ${'or'.tr} ${'username'.tr}',
            ),
            SizedBox(
              height: 20.h,
            ),
            passTextField(
                passController: passController
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                  ),
                  onPressed: (){

                  },
                  child: Text(
                    'forgot_password'.tr,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: bigButton(
                  name: 'login'.tr,
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'US'));

                  },
              ),
            ),
            SizedBox(
              height: 36.h,
            ),

            Row(
              children: [
                SizedBox(
                  width: 14.w,
                ),
                Flexible(
                  child: Divider(
                    color: Color(0xFFE3E8F1),
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  'or'.tr,
                  style: TextStyle(
                    color: hintTextColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Flexible(
                  child: Divider(
                    color: Color(0xFFE3E8F1),
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
              ],
            ),

            SizedBox(
              height: 22.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){

                  },
                  borderRadius: BorderRadius.circular(30.r),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFE3E8F1),
                        width: 1,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/google.svg',
                      height: 26.h,
                      width: 26.w,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                InkWell(
                  onTap: (){

                  },
                  borderRadius: BorderRadius.circular(30.r),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFE3E8F1),
                        width: 1,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/facebook.svg',
                      height: 26.h,
                      width: 26.w,
                    ),
                  ),
                ),
              ],
            ),

            Spacer(flex: 2,),
            Center(
              child: TextButton(
                onPressed: (){

                },
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'dont_have_an_account'.tr,
                      style: TextStyle(
                        color: Color(0xFF2C406E),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: fontCheck(),
                      ),
                      children: [
                        TextSpan(
                          text: ' ',
                        ),
                        TextSpan(
                          text: 'signup'.tr,
                          style: TextStyle(
                            color: Color(0xFF2C406E),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: fontCheck(),
                          ),
                        ),
                      ],
                    )
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
