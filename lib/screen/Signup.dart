import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:likho/widget/emailTextField.dart';
import 'package:likho/widget/passTextField.dart';
import 'package:likho/utils/colors.dart';
import 'package:likho/utils/fontCheck.dart';
import 'package:likho/widget/BigButton.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Text(
                'signup'.tr,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            TextFormField(
              controller: usernameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'username'.tr,
                hintStyle: TextStyle(
                  color: hintTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(
                    'assets/icons/message.svg',
                  ),
                ),
                prefixIconConstraints: BoxConstraints(
                  maxHeight: 40.h,
                  maxWidth: 40.w,
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: hintTextColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: hintTextColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: hintTextColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please_enter_username'.tr;
                }
                return null;
              },
            ),
            SizedBox(
              height: 20.h,
            ),
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
              height: 44.h,
            ),
            Center(
              child: bigButton(
                name: 'signup'.tr,
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

            SizedBox(
              height: 50.h,
            ),
            Center(
              child: TextButton(
                onPressed: (){
                  Get.back();
                },
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'have_an_account'.tr,
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
                          text: 'login'.tr,
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
